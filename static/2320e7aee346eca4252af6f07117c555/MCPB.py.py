from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mcpb_Py_V0_1_0 = CommandToolBuilder(tool="MCPB.py", base_command=["MCPB.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mcpb_Py_V0_1_0().translate("wdl", allow_empty_container=True)

