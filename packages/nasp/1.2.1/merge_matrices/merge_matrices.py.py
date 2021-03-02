from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Merge_Matrices_Py_V0_1_0 = CommandToolBuilder(tool="merge_matrices.py", base_command=["merge_matrices.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Matrices_Py_V0_1_0().translate("wdl", allow_empty_container=True)

