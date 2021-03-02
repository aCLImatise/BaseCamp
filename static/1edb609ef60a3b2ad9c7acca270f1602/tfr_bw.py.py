from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tfr_Bw_Py_V0_1_0 = CommandToolBuilder(tool="tfr_bw.py", base_command=["tfr_bw.py"], inputs=[], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tfr_Bw_Py_V0_1_0().translate("wdl")

