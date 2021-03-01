from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Counts_Pl_V0_1_0 = CommandToolBuilder(tool="get_counts.pl", base_command=["get_counts.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/bttoxin_digger:1.0.8--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Counts_Pl_V0_1_0().translate("wdl")

