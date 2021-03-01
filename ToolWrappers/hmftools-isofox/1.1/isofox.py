from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Isofox_V0_1_0 = CommandToolBuilder(tool="isofox", base_command=["isofox"], inputs=[], outputs=[], container="quay.io/biocontainers/hmftools-isofox:1.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isofox_V0_1_0().translate("wdl")

