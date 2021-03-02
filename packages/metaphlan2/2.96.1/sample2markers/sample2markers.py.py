from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sample2Markers_Py_V0_1_0 = CommandToolBuilder(tool="sample2markers.py", base_command=["sample2markers.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sample2Markers_Py_V0_1_0().translate("wdl", allow_empty_container=True)

