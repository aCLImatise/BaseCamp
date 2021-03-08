from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Wiggle_To_Array_Tree_Py_V0_1_0 = CommandToolBuilder(tool="wiggle_to_array_tree.py", base_command=["wiggle_to_array_tree.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wiggle_To_Array_Tree_Py_V0_1_0().translate("wdl")

