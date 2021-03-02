from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Reptrim_V0_1_0 = CommandToolBuilder(tool="REPtrim", base_command=["REPtrim"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reptrim_V0_1_0().translate("wdl", allow_empty_container=True)

