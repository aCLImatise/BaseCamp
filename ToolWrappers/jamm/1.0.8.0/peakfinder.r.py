from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Peakfinder_R_V0_1_0 = CommandToolBuilder(tool="peakfinder.r", base_command=["peakfinder.r"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peakfinder_R_V0_1_0().translate("wdl", allow_empty_container=True)

