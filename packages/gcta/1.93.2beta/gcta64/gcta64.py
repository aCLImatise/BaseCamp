from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gcta64_V0_1_0 = CommandToolBuilder(tool="gcta64", base_command=["gcta64"], inputs=[], outputs=[], container="quay.io/biocontainers/gcta:1.93.2beta--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcta64_V0_1_0().translate("wdl")

