from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ms_Comp_Taxa_V0_1_0 = CommandToolBuilder(tool="MS_comp_taxa", base_command=["MS-comp-taxa"], inputs=[], outputs=[], container="quay.io/biocontainers/dms:1.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ms_Comp_Taxa_V0_1_0().translate("wdl")

