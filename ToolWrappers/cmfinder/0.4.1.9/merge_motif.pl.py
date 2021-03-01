from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Merge_Motif_Pl_V0_1_0 = CommandToolBuilder(tool="merge_motif.pl", base_command=["merge_motif.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Motif_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

