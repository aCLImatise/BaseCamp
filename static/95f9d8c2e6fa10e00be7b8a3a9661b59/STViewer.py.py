from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Stviewer_Py_V0_1_0 = CommandToolBuilder(tool="STViewer.py", base_command=["STViewer.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stviewer_Py_V0_1_0().translate("wdl", allow_empty_container=True)

