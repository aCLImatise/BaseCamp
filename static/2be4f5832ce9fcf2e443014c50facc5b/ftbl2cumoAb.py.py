from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ftbl2Cumoab_Py_V0_1_0 = CommandToolBuilder(tool="ftbl2cumoAb.py", base_command=["ftbl2cumoAb.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ftbl2Cumoab_Py_V0_1_0().translate("wdl", allow_empty_container=True)

