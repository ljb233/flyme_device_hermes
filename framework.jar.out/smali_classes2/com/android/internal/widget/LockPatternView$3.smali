.class Lcom/android/internal/widget/LockPatternView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;

.field final synthetic val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

.field final synthetic val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternView;
    .param p2, "val$cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p3, "val$finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$3;->this$0:Lcom/android/internal/widget/LockPatternView;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$3;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    iput-object p3, p0, Lcom/android/internal/widget/LockPatternView$3;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$3;->val$cellState:Lcom/android/internal/widget/LockPatternView$CellState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    .line 564
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$3;->val$finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$3;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 562
    :cond_0
    return-void
.end method
