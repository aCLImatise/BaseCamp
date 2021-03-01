from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Atacdriver_Py_V0_1_0 = CommandToolBuilder(tool="AtacDriver.py", base_command=["AtacDriver.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Atacdriver_Py_V0_1_0().translate("wdl", allow_empty_container=True)

