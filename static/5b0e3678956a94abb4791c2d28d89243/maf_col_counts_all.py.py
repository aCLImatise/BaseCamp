from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maf_Col_Counts_All_Py_V0_1_0 = CommandToolBuilder(tool="maf_col_counts_all.py", base_command=["maf_col_counts_all.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Col_Counts_All_Py_V0_1_0().translate("wdl")

