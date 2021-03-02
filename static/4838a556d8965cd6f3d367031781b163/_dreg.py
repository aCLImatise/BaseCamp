from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Dreg_V0_1_0 = CommandToolBuilder(tool="_dreg", base_command=["_dreg"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Dreg_V0_1_0().translate("wdl", allow_empty_container=True)

