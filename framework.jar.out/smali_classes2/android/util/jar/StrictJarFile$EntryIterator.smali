.class final Landroid/util/jar/StrictJarFile$EntryIterator;
.super Ljava/lang/Object;
.source "StrictJarFile.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final iterationHandle:J

.field private nextEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 3
    .param p1, "nativeHandle"    # J
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    invoke-static {p1, p2, p3}, Landroid/util/jar/StrictJarFile;->-wrap1(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    .line 250
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 265
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    if-eqz v1, :cond_0

    .line 266
    return v4

    .line 269
    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    invoke-static {v2, v3}, Landroid/util/jar/StrictJarFile;->-wrap0(J)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 270
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_1

    .line 271
    const/4 v1, 0x0

    return v1

    .line 274
    :cond_1
    iput-object v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    .line 275
    return v4
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile$EntryIterator;->next()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/zip/ZipEntry;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v1, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    if-eqz v1, :cond_0

    .line 256
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    .line 257
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    iput-object v2, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    .line 258
    return-object v0

    .line 261
    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    invoke-static {v2, v3}, Landroid/util/jar/StrictJarFile;->-wrap0(J)Ljava/util/zip/ZipEntry;

    move-result-object v1

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
