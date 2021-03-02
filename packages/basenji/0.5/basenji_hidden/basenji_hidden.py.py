from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Basenji_Hidden_Py_V0_1_0 = CommandToolBuilder(tool="basenji_hidden.py", base_command=["basenji_hidden.py"], inputs=[], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Hidden_Py_V0_1_0().translate("wdl")

