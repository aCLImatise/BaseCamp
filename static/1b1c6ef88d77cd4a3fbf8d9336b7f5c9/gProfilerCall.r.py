from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gprofilercall_R_V0_1_0 = CommandToolBuilder(tool="gProfilerCall.r", base_command=["gProfilerCall.r"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gprofilercall_R_V0_1_0().translate("wdl", allow_empty_container=True)

