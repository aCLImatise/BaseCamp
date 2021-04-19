from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Find_Read_Count_Pl_V0_1_0 = CommandToolBuilder(tool="find_read_count.pl", base_command=["find_read_count.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Read_Count_Pl_V0_1_0().translate("wdl")

