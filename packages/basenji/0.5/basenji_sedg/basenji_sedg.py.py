from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Basenji_Sedg_Py_V0_1_0 = CommandToolBuilder(tool="basenji_sedg.py", base_command=["basenji_sedg.py"], inputs=[], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Sedg_Py_V0_1_0().translate("wdl")

