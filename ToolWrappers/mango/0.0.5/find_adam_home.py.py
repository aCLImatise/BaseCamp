from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Find_Adam_Home_Py_V0_1_0 = CommandToolBuilder(tool="find_adam_home.py", base_command=["find_adam_home.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Adam_Home_Py_V0_1_0().translate("wdl", allow_empty_container=True)

