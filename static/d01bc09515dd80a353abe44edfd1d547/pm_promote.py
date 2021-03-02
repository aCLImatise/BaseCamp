from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pm_Promote_V0_1_0 = CommandToolBuilder(tool="pm_promote", base_command=["pm-promote"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pm_Promote_V0_1_0().translate("wdl", allow_empty_container=True)

