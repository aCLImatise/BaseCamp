from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Main_Py_V0_1_0 = CommandToolBuilder(tool="main.py", base_command=["main.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Main_Py_V0_1_0().translate("wdl", allow_empty_container=True)

