from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Joinfiles_Py_V0_1_0 = CommandToolBuilder(tool="joinFiles.py", base_command=["joinFiles.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Joinfiles_Py_V0_1_0().translate("wdl", allow_empty_container=True)

