.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 2926
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2927
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2928
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2929
    const-string/jumbo v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2930
    const-string/jumbo v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2931
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2934
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2935
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2936
    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2937
    const-string/jumbo v2, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2938
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2926
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 2943
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2944
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2945
    .local v0, "action":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2946
    .local v5, "pkgList":[Ljava/lang/String;
    const-string/jumbo v11, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2947
    const-string/jumbo v11, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2948
    .local v5, "pkgList":[Ljava/lang/String;
    array-length v11, v5

    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v3, v5, v9

    .line 2949
    .local v3, "packageName":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v12, v3}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2950
    const/4 v9, -0x1

    invoke-virtual {p0, v9}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    .line 2951
    return-void

    .line 2948
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    monitor-exit v10

    .line 2954
    return-void

    .line 2955
    .local v5, "pkgList":[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v11, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2956
    const-string/jumbo v11, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2981
    .end local v5    # "pkgList":[Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v5, :cond_a

    array-length v11, v5

    if-lez v11, :cond_a

    .line 2982
    array-length v11, v5

    :goto_2
    if-ge v9, v11, :cond_a

    aget-object v4, v5, v9

    .line 2983
    .local v4, "pkg":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v12, v4}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 2984
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2985
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_9

    .line 2986
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 2987
    .local v7, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 2988
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-gtz v12, :cond_4

    .line 2989
    iget-object v12, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2985
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2957
    .end local v2    # "i":I
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v7    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v5    # "pkgList":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v11, "android.intent.action.USER_STOPPED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2958
    const-string/jumbo v11, "android.intent.extra.user_handle"

    const/4 v12, -0x1

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 2959
    .local v8, "userHandle":I
    if-ltz v8, :cond_3

    .line 2960
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v11, v8}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2943
    .end local v0    # "action":Ljava/lang/String;
    .end local v5    # "pkgList":[Ljava/lang/String;
    .end local v8    # "userHandle":I
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 2962
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v5    # "pkgList":[Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string/jumbo v11, "android.intent.action.UID_REMOVED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2963
    const-string/jumbo v11, "android.intent.extra.UID"

    const/4 v12, -0x1

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2964
    .local v6, "uid":I
    if-ltz v6, :cond_3

    .line 2965
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v11, v11, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseLongArray;->delete(I)V

    goto :goto_1

    .line 2968
    .end local v6    # "uid":I
    :cond_7
    const-string/jumbo v11, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2969
    const-string/jumbo v11, "android.intent.extra.REPLACING"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    .line 2968
    if-eqz v11, :cond_8

    monitor-exit v10

    .line 2971
    return-void

    .line 2973
    :cond_8
    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2974
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 2975
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 2976
    .restart local v4    # "pkg":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 2977
    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/String;

    .end local v5    # "pkgList":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v4, v5, v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v5, "pkgList":[Ljava/lang/String;
    goto/16 :goto_1

    .line 2982
    .end local v1    # "data":Landroid/net/Uri;
    .end local v5    # "pkgList":[Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .end local v2    # "i":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_a
    monitor-exit v10

    .line 2942
    return-void
.end method
