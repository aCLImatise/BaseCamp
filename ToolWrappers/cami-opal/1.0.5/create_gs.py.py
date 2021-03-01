from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Create_Gs_Py_V0_1_0 = CommandToolBuilder(tool="create_gs.py", base_command=["create_gs.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Gs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

