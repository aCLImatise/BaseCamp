from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Perform_Controls_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="perform_controls.pl.orig", base_command=["perform_controls.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Perform_Controls_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

