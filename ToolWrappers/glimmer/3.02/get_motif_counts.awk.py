from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Motif_Counts_Awk_V0_1_0 = CommandToolBuilder(tool="get_motif_counts.awk", base_command=["get-motif-counts.awk"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Motif_Counts_Awk_V0_1_0().translate("wdl", allow_empty_container=True)

