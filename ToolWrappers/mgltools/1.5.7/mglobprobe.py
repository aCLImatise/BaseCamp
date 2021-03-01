from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mglobprobe_V0_1_0 = CommandToolBuilder(tool="mglobprobe", base_command=["mglobprobe"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mglobprobe_V0_1_0().translate("wdl", allow_empty_container=True)

