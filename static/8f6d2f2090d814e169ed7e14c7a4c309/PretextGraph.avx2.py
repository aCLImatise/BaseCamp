from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pretextgraph_Avx2_V0_1_0 = CommandToolBuilder(tool="PretextGraph.avx2", base_command=["PretextGraph.avx2"], inputs=[], outputs=[], container="quay.io/biocontainers/pretextgraph:0.0.4--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pretextgraph_Avx2_V0_1_0().translate("wdl")

