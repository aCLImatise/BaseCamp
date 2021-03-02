from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


1_2_Pick_Up_Reads_Pl_V0_1_0 = CommandToolBuilder(tool="1_2_pick_up_reads.pl", base_command=["1_2_pick_up_reads.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/sat-bsa:1.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    1_2_Pick_Up_Reads_Pl_V0_1_0().translate("wdl")

