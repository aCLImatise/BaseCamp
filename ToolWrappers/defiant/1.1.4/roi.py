from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Roi_V0_1_0 = CommandToolBuilder(tool="roi", base_command=["roi"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Roi_V0_1_0().translate("wdl", allow_empty_container=True)

