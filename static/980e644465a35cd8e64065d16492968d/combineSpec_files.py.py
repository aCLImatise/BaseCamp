from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Combinespec_Files_Py_V0_1_0 = CommandToolBuilder(tool="combineSpec_files.py", base_command=["combineSpec_files.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combinespec_Files_Py_V0_1_0().translate("wdl", allow_empty_container=True)

