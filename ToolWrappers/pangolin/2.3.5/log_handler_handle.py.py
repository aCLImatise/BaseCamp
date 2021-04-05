from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Log_Handler_Handle_Py_V0_1_0 = CommandToolBuilder(tool="log_handler_handle.py", base_command=["log_handler_handle.py"], inputs=[], outputs=[], container="quay.io/biocontainers/pangolin:2.3.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Log_Handler_Handle_Py_V0_1_0().translate("wdl")

