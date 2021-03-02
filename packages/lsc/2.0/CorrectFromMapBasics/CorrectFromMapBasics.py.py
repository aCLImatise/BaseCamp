from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Correctfrommapbasics_Py_V0_1_0 = CommandToolBuilder(tool="CorrectFromMapBasics.py", base_command=["CorrectFromMapBasics.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Correctfrommapbasics_Py_V0_1_0().translate("wdl", allow_empty_container=True)

