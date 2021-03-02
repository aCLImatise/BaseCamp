from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_Unittest_Py_V0_1_0 = CommandToolBuilder(tool="run_unittest.py", base_command=["run-unittest.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Unittest_Py_V0_1_0().translate("wdl", allow_empty_container=True)

