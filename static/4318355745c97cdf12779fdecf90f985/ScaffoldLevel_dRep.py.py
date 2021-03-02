from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Scaffoldlevel_Drep_Py_V0_1_0 = CommandToolBuilder(tool="ScaffoldLevel_dRep.py", base_command=["ScaffoldLevel_dRep.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scaffoldlevel_Drep_Py_V0_1_0().translate("wdl", allow_empty_container=True)

