from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maf_Percent_Columns_Matching_Py_V0_1_0 = CommandToolBuilder(tool="maf_percent_columns_matching.py", base_command=["maf_percent_columns_matching.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Percent_Columns_Matching_Py_V0_1_0().translate("wdl")

