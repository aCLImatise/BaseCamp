from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Samflaginfo_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="samFLAGinfo.pl.orig", base_command=["samFLAGinfo.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samflaginfo_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

