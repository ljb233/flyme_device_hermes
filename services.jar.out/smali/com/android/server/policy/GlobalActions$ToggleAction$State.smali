.class final enum Lcom/android/server/policy/GlobalActions$ToggleAction$State;
.super Ljava/lang/Enum;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions$ToggleAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/policy/GlobalActions$ToggleAction$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field public static final enum Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field public static final enum On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field public static final enum TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field public static final enum TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;


# instance fields
.field private final inTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1351
    new-instance v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string/jumbo v1, "Off"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1352
    new-instance v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string/jumbo v1, "TurningOn"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1353
    new-instance v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string/jumbo v1, "TurningOff"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1354
    new-instance v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    const-string/jumbo v1, "On"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1350
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->$VALUES:[Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "intermediate"    # Z

    .prologue
    .line 1358
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1359
    iput-boolean p3, p0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition:Z

    .line 1358
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1350
    const-class v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method public static values()[Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    .prologue
    .line 1350
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->$VALUES:[Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method


# virtual methods
.method public inTransition()Z
    .locals 1

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition:Z

    return v0
.end method
