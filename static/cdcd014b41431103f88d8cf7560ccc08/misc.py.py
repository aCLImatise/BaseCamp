from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Misc_Py_V0_1_0 = CommandToolBuilder(tool="misc.py", base_command=["misc.py"], inputs=[], outputs=[], container="quay.io/biocontainers/panphlan:3.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Misc_Py_V0_1_0().translate("wdl")

