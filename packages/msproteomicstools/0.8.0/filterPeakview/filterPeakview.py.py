from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filterpeakview_Py_V0_1_0 = CommandToolBuilder(tool="filterPeakview.py", base_command=["filterPeakview.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filterpeakview_Py_V0_1_0().translate("wdl", allow_empty_container=True)

