from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Wiggle_To_Array_Tree_Py_V0_1_0 = CommandToolBuilder(tool="wiggle_to_array_tree.py", base_command=["wiggle_to_array_tree.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wiggle_To_Array_Tree_Py_V0_1_0().translate("wdl", allow_empty_container=True)

