from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Brat2Bismark_Pl_V0_1_0 = CommandToolBuilder(tool="brat2bismark.pl", base_command=["brat2bismark.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Brat2Bismark_Pl_V0_1_0().translate("wdl")

