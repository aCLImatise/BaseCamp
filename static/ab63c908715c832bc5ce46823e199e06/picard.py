from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Picard_V0_1_0 = CommandToolBuilder(tool="picard", base_command=["picard"], inputs=[], outputs=[], container="quay.io/biocontainers/picard:2.25.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Picard_V0_1_0().translate("wdl")

