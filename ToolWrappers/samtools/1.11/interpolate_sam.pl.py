from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Interpolate_Sam_Pl_V0_1_0 = CommandToolBuilder(tool="interpolate_sam.pl", base_command=["interpolate_sam.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/samtools:1.11--h6270b1f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Interpolate_Sam_Pl_V0_1_0().translate("wdl")

