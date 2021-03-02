from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Intersection_Matrix_Pyc_V0_1_0 = CommandToolBuilder(tool="intersection_matrix.pyc", base_command=["intersection_matrix.pyc"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Intersection_Matrix_Pyc_V0_1_0().translate("wdl", allow_empty_container=True)

