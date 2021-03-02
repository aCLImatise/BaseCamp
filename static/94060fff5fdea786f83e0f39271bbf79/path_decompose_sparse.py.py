from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Path_Decompose_Sparse_Py_V0_1_0 = CommandToolBuilder(tool="path_decompose_sparse.py", base_command=["path_decompose_sparse.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Path_Decompose_Sparse_Py_V0_1_0().translate("wdl", allow_empty_container=True)

