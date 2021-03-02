from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ale2Wiggle_Py_V0_1_0 = CommandToolBuilder(tool="ale2wiggle.py", base_command=["ale2wiggle.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ale2Wiggle_Py_V0_1_0().translate("wdl", allow_empty_container=True)

