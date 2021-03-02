from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Shell_Utils_Py_V0_1_0 = CommandToolBuilder(tool="shell_utils.py", base_command=["shell_utils.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shell_Utils_Py_V0_1_0().translate("wdl", allow_empty_container=True)

