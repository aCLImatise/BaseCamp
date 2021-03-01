from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gth2Gtf_Pl_V0_1_0 = CommandToolBuilder(tool="gth2gtf.pl", base_command=["gth2gtf.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gth2Gtf_Pl_V0_1_0().translate("wdl")

