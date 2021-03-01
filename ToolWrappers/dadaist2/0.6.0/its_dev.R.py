from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Its_Dev_R_V0_1_0 = CommandToolBuilder(tool="its_dev.R", base_command=["its-dev.R"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.6.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Its_Dev_R_V0_1_0().translate("wdl")

