from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pf00225_Full_Blocks_Txt_V0_1_0 = CommandToolBuilder(tool="PF00225_full.blocks.txt", base_command=["PF00225_full.blocks.txt"], inputs=[], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pf00225_Full_Blocks_Txt_V0_1_0().translate("wdl")

