from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Select_For_Randfold_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="select_for_randfold.pl.orig", base_command=["select_for_randfold.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Select_For_Randfold_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

