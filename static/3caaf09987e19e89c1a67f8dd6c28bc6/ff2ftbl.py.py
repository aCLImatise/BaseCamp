from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ff2Ftbl_Py_V0_1_0 = CommandToolBuilder(tool="ff2ftbl.py", base_command=["ff2ftbl.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ff2Ftbl_Py_V0_1_0().translate("wdl", allow_empty_container=True)

