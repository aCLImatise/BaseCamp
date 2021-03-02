from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Read_Grouping_Py_V0_1_0 = CommandToolBuilder(tool="read_grouping.py", base_command=["read_grouping.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Grouping_Py_V0_1_0().translate("wdl", allow_empty_container=True)

