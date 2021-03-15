from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Slimfastq_Multi_V0_1_0 = CommandToolBuilder(tool="slimfastq.multi", base_command=["slimfastq.multi"], inputs=[], outputs=[], container="quay.io/biocontainers/slimfastq:2.04--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slimfastq_Multi_V0_1_0().translate("wdl")

