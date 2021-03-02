from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Nib_Length_Py_V0_1_0 = CommandToolBuilder(tool="nib_length.py", base_command=["nib_length.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nib_Length_Py_V0_1_0().translate("wdl", allow_empty_container=True)

