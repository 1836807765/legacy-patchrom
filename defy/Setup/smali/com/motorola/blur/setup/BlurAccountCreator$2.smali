.class Lcom/motorola/blur/setup/BlurAccountCreator$2;
.super Ljava/lang/Object;
.source "BlurAccountCreator.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/BlurAccountCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/BlurAccountCreator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurAccountCreator$2;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 388
    :try_start_0
    invoke-static {p2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    move-result-object v0

    .line 389
    .local v0, engine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;
    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator$2;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->suspendAllSyncing()Z

    move-result v3

    #setter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mSuspended:Z
    invoke-static {v2, v3}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$002(Lcom/motorola/blur/setup/BlurAccountCreator;Z)Z

    .line 390
    iget-object v2, p0, Lcom/motorola/blur/setup/BlurAccountCreator$2;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$100(Lcom/motorola/blur/setup/BlurAccountCreator;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/setup/BlurAccountCreator$2;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    #getter for: Lcom/motorola/blur/setup/BlurAccountCreator;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/blur/setup/BlurAccountCreator;->access$100(Lcom/motorola/blur/setup/BlurAccountCreator;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v0           #engine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 392
    .local v1, exception:Landroid/os/RemoteException;
    const-string v2, "BAC"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t suspend sync: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 400
    return-void
.end method
