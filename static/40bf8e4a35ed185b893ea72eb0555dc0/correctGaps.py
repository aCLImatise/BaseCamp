from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Correctgaps_V0_1_0 = CommandToolBuilder(tool="correctGaps", base_command=["correctGaps"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Correctgaps_V0_1_0().translate("wdl", allow_empty_container=True)

