from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bubbledetector_Py_V0_1_0 = CommandToolBuilder(tool="bubbledetector.py", base_command=["bubbledetector.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bubbledetector_Py_V0_1_0().translate("wdl", allow_empty_container=True)

