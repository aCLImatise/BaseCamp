from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_Structdr_Py_V0_1_0 = CommandToolBuilder(tool="run_structdr.py", base_command=["run_structdr.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Structdr_Py_V0_1_0().translate("wdl", allow_empty_container=True)

