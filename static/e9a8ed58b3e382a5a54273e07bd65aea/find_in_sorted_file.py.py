from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Find_In_Sorted_File_Py_V0_1_0 = CommandToolBuilder(tool="find_in_sorted_file.py", base_command=["find_in_sorted_file.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_In_Sorted_File_Py_V0_1_0().translate("wdl", allow_empty_container=True)

