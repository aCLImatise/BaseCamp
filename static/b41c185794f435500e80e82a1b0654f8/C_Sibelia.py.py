from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


C_Sibelia_Py_V0_1_0 = CommandToolBuilder(tool="C_Sibelia.py", base_command=["C-Sibelia.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    C_Sibelia_Py_V0_1_0().translate("wdl", allow_empty_container=True)

