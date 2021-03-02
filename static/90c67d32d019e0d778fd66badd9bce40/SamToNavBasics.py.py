from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Samtonavbasics_Py_V0_1_0 = CommandToolBuilder(tool="SamToNavBasics.py", base_command=["SamToNavBasics.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtonavbasics_Py_V0_1_0().translate("wdl", allow_empty_container=True)

