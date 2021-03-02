from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


External_Sparse_Matrix_List_Py_V0_1_0 = CommandToolBuilder(tool="external_sparse_matrix_list.py", base_command=["external_sparse_matrix_list.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    External_Sparse_Matrix_List_Py_V0_1_0().translate("wdl", allow_empty_container=True)

