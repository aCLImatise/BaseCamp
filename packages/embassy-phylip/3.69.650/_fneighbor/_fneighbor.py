from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Fneighbor_V0_1_0 = CommandToolBuilder(tool="_fneighbor", base_command=["_fneighbor"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Fneighbor_V0_1_0().translate("wdl", allow_empty_container=True)

