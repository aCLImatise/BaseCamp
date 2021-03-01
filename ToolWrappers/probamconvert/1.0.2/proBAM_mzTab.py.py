from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Probam_Mztab_Py_V0_1_0 = CommandToolBuilder(tool="proBAM_mzTab.py", base_command=["proBAM_mzTab.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Probam_Mztab_Py_V0_1_0().translate("wdl", allow_empty_container=True)

