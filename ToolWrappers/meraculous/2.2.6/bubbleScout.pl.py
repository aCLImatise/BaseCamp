from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bubblescout_Pl_V0_1_0 = CommandToolBuilder(tool="bubbleScout.pl", base_command=["bubbleScout.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bubblescout_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

