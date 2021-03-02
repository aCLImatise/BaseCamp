from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Findredundantblat_Pl_V0_1_0 = CommandToolBuilder(tool="findRedundantBLAT.pl", base_command=["findRedundantBLAT.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findredundantblat_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

