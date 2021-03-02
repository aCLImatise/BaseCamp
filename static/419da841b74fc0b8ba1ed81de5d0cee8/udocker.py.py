from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Udocker_Py_V0_1_0 = CommandToolBuilder(tool="udocker.py", base_command=["udocker.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Udocker_Py_V0_1_0().translate("wdl", allow_empty_container=True)

