from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Primary_Sam_Py_V0_1_0 = CommandToolBuilder(tool="get_primary_sam.py", base_command=["get_primary_sam.py"], inputs=[], outputs=[], container="quay.io/biocontainers/nanosim:2.6.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Primary_Sam_Py_V0_1_0().translate("wdl")

