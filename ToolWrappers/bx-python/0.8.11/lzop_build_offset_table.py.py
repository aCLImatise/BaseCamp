from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lzop_Build_Offset_Table_Py_V0_1_0 = CommandToolBuilder(tool="lzop_build_offset_table.py", base_command=["lzop_build_offset_table.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lzop_Build_Offset_Table_Py_V0_1_0().translate("wdl")

