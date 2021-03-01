from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Refactor_Breaks_Py_V0_1_0 = CommandToolBuilder(tool="refactor_breaks.py", base_command=["refactor_breaks.py"], inputs=[], outputs=[], container="quay.io/biocontainers/salsa2:2.2--py27h78a066a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refactor_Breaks_Py_V0_1_0().translate("wdl")

