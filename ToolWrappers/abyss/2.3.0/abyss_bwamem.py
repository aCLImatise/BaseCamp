from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Abyss_Bwamem_V0_1_0 = CommandToolBuilder(tool="abyss_bwamem", base_command=["abyss-bwamem"], inputs=[], outputs=[], container="quay.io/biocontainers/abyss:2.3.0--ha4ec83a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Bwamem_V0_1_0().translate("wdl")

