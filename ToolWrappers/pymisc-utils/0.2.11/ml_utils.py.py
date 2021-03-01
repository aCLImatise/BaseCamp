from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ml_Utils_Py_V0_1_0 = CommandToolBuilder(tool="ml_utils.py", base_command=["ml_utils.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ml_Utils_Py_V0_1_0().translate("wdl", allow_empty_container=True)

