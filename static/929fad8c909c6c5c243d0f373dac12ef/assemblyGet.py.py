from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Assemblyget_Py_V0_1_0 = CommandToolBuilder(tool="assemblyGet.py", base_command=["assemblyGet.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assemblyget_Py_V0_1_0().translate("wdl", allow_empty_container=True)

