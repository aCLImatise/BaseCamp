from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Validation_Utils_Py_V0_1_0 = CommandToolBuilder(tool="validation_utils.py", base_command=["validation_utils.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Validation_Utils_Py_V0_1_0().translate("wdl", allow_empty_container=True)

