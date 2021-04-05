from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Popdel_V0_1_0 = CommandToolBuilder(tool="popdel", base_command=["popdel"], inputs=[], outputs=[], container="quay.io/biocontainers/popdel:1.5.0--h8e334b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Popdel_V0_1_0().translate("wdl")

