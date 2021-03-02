from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filter_Matrix_By_Distance_Py_V0_1_0 = CommandToolBuilder(tool="filter_matrix_by_distance.py", base_command=["filter_matrix_by_distance.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Matrix_By_Distance_Py_V0_1_0().translate("wdl", allow_empty_container=True)

