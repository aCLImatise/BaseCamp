from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Relocate_Trim_Py_V0_1_0 = CommandToolBuilder(tool="relocaTE_trim.py", base_command=["relocaTE_trim.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Relocate_Trim_Py_V0_1_0().translate("wdl", allow_empty_container=True)

