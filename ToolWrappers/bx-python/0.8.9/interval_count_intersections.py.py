from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Interval_Count_Intersections_Py_V0_1_0 = CommandToolBuilder(tool="interval_count_intersections.py", base_command=["interval_count_intersections.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Interval_Count_Intersections_Py_V0_1_0().translate("wdl", allow_empty_container=True)

