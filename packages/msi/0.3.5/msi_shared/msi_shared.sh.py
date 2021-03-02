from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Msi_Shared_Sh_V0_1_0 = CommandToolBuilder(tool="msi_shared.sh", base_command=["msi_shared.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/msi:0.3.5--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msi_Shared_Sh_V0_1_0().translate("wdl")

