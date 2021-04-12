from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Graphaligner_V0_1_0 = CommandToolBuilder(tool="GraphAligner", base_command=["GraphAligner"], inputs=[], outputs=[], container="quay.io/biocontainers/graphaligner:1.0.13--he1c1bb9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graphaligner_V0_1_0().translate("wdl")

