from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Find_Reps_Blat_Py_V0_1_0 = CommandToolBuilder(tool="find_reps_blat.py", base_command=["find_reps_blat.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Reps_Blat_Py_V0_1_0().translate("wdl", allow_empty_container=True)

