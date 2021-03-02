from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Calculations_New_Py_V0_1_0 = CommandToolBuilder(tool="calculations_new.py", base_command=["calculations_new.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calculations_New_Py_V0_1_0().translate("wdl", allow_empty_container=True)

