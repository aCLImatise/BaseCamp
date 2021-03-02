from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maf_Col_Counts_Py_V0_1_0 = CommandToolBuilder(tool="maf_col_counts.py", base_command=["maf_col_counts.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Col_Counts_Py_V0_1_0().translate("wdl", allow_empty_container=True)

