from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Assembly_Py_V0_1_0 = CommandToolBuilder(tool="Assembly.py", base_command=["Assembly.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assembly_Py_V0_1_0().translate("wdl", allow_empty_container=True)

