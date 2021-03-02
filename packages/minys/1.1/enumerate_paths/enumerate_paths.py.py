from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Enumerate_Paths_Py_V0_1_0 = CommandToolBuilder(tool="enumerate_paths.py", base_command=["enumerate_paths.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enumerate_Paths_Py_V0_1_0().translate("wdl", allow_empty_container=True)

