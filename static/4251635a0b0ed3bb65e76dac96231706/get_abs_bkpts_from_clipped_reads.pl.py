from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Abs_Bkpts_From_Clipped_Reads_Pl_V0_1_0 = CommandToolBuilder(tool="get_abs_bkpts_from_clipped_reads.pl", base_command=["get_abs_bkpts_from_clipped_reads.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Abs_Bkpts_From_Clipped_Reads_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

