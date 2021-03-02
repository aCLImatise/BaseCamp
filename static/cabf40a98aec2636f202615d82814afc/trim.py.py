from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Trim_Py_V0_1_0 = CommandToolBuilder(tool="trim.py", base_command=["trim.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trim_Py_V0_1_0().translate("wdl", allow_empty_container=True)

