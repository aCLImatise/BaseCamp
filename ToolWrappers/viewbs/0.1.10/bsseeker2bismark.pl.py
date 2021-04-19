from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bsseeker2Bismark_Pl_V0_1_0 = CommandToolBuilder(tool="bsseeker2bismark.pl", base_command=["bsseeker2bismark.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bsseeker2Bismark_Pl_V0_1_0().translate("wdl")

