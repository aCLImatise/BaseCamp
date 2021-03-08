from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bed_Count_By_Interval_Py_V0_1_0 = CommandToolBuilder(tool="bed_count_by_interval.py", base_command=["bed_count_by_interval.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed_Count_By_Interval_Py_V0_1_0().translate("wdl")

