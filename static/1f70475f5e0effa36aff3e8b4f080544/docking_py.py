from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Docking_Py_V0_1_0 = CommandToolBuilder(tool="docking_py", base_command=["docking_py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Docking_Py_V0_1_0().translate("wdl", allow_empty_container=True)

