from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Deploid_Dbg_V0_1_0 = CommandToolBuilder(tool="dEploid_dbg", base_command=["dEploid_dbg"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deploid_Dbg_V0_1_0().translate("wdl", allow_empty_container=True)

