from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Carthess2Fc_Py_V0_1_0 = CommandToolBuilder(tool="CartHess2FC.py", base_command=["CartHess2FC.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Carthess2Fc_Py_V0_1_0().translate("wdl", allow_empty_container=True)

