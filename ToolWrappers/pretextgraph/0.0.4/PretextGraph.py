from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pretextgraph_V0_1_0 = CommandToolBuilder(tool="PretextGraph", base_command=["PretextGraph"], inputs=[], outputs=[], container="quay.io/biocontainers/pretextgraph:0.0.4--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pretextgraph_V0_1_0().translate("wdl")

