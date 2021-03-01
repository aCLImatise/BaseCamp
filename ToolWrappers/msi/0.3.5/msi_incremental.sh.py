from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Msi_Incremental_Sh_V0_1_0 = CommandToolBuilder(tool="msi_incremental.sh", base_command=["msi_incremental.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/msi:0.3.5--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msi_Incremental_Sh_V0_1_0().translate("wdl")

