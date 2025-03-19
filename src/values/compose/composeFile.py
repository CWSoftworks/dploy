class PushedFile:
    def __init__(self,Contents: str = "",Repo: str = "",Key: str = ""):
        self.Contents = Contents
        self.PushingRepo = Repo
        self.Key = Key