from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Logging_Utils_Py_V0_1_0 = CommandToolBuilder(tool="logging_utils.py", base_command=["logging_utils.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Logging_Utils_Py_V0_1_0().translate("wdl", allow_empty_container=True)

