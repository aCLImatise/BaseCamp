from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Elite_Range_Py_V0_1_0 = CommandToolBuilder(tool="get_elite_range.py", base_command=["get_elite_range.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Elite_Range_Py_V0_1_0().translate("wdl", allow_empty_container=True)

