from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Chisel_Calling_Py_V0_1_0 = CommandToolBuilder(tool="chisel_calling.py", base_command=["chisel_calling.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chisel_Calling_Py_V0_1_0().translate("wdl", allow_empty_container=True)

