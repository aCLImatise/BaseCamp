from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rmblastn_V0_1_0 = CommandToolBuilder(tool="rmblastn", base_command=["rmblastn"], inputs=[], outputs=[], container="quay.io/biocontainers/rmblast:2.10.0--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rmblastn_V0_1_0().translate("wdl")

