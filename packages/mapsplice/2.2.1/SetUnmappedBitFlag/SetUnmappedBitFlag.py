from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Setunmappedbitflag_V0_1_0 = CommandToolBuilder(tool="SetUnmappedBitFlag", base_command=["SetUnmappedBitFlag"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Setunmappedbitflag_V0_1_0().translate("wdl", allow_empty_container=True)

