from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rapidstats_R_V0_1_0 = CommandToolBuilder(tool="rapidStats.r", base_command=["rapidStats.r"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rapidstats_R_V0_1_0().translate("wdl", allow_empty_container=True)

