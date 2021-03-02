from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Picking_Up_Ice2_Py_V0_1_0 = CommandToolBuilder(tool="picking_up_ice2.py", base_command=["picking_up_ice2.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Picking_Up_Ice2_Py_V0_1_0().translate("wdl", allow_empty_container=True)

