from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bed_Extend_To_Py_V0_1_0 = CommandToolBuilder(tool="bed_extend_to.py", base_command=["bed_extend_to.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed_Extend_To_Py_V0_1_0().translate("wdl", allow_empty_container=True)

