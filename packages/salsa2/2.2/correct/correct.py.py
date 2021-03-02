from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Correct_Py_V0_1_0 = CommandToolBuilder(tool="correct.py", base_command=["correct.py"], inputs=[], outputs=[], container="quay.io/biocontainers/salsa2:2.2--py27h78a066a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Correct_Py_V0_1_0().translate("wdl")

