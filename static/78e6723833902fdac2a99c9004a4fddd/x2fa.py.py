from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


X2Fa_Py_V0_1_0 = CommandToolBuilder(tool="x2fa.py", base_command=["x2fa.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    X2Fa_Py_V0_1_0().translate("wdl", allow_empty_container=True)

