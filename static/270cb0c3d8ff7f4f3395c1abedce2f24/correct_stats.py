from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Correct_Stats_V0_1_0 = CommandToolBuilder(tool="correct_stats", base_command=["correct_stats"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Correct_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

