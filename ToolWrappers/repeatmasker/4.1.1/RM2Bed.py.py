from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rm2Bed_Py_V0_1_0 = CommandToolBuilder(tool="RM2Bed.py", base_command=["RM2Bed.py"], inputs=[], outputs=[], container="quay.io/biocontainers/repeatmasker:4.1.1--pl526_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rm2Bed_Py_V0_1_0().translate("wdl")

