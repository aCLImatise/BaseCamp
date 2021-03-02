from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Launch_Wlogdate_Py_V0_1_0 = CommandToolBuilder(tool="launch_wLogDate.py", base_command=["launch_wLogDate.py"], inputs=[], outputs=[], container="quay.io/biocontainers/wlogdate:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Launch_Wlogdate_Py_V0_1_0().translate("wdl")

