from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Find_In_Sorted_File_Py_V0_1_0 = CommandToolBuilder(tool="find_in_sorted_file.py", base_command=["find_in_sorted_file.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_In_Sorted_File_Py_V0_1_0().translate("wdl")

