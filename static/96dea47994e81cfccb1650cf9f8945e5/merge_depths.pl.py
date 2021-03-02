from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Merge_Depths_Pl_V0_1_0 = CommandToolBuilder(tool="merge_depths.pl", base_command=["merge_depths.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Depths_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

