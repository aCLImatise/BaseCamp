from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Optc4_Py_V0_1_0 = CommandToolBuilder(tool="OptC4.py", base_command=["OptC4.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Optc4_Py_V0_1_0().translate("wdl", allow_empty_container=True)

