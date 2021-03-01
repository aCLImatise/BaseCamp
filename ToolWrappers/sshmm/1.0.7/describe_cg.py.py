from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Describe_Cg_Py_V0_1_0 = CommandToolBuilder(tool="describe_cg.py", base_command=["describe_cg.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Describe_Cg_Py_V0_1_0().translate("wdl", allow_empty_container=True)

