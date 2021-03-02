from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Randomlist2_Pl_V0_1_0 = CommandToolBuilder(tool="randomList2.pl", base_command=["randomList2.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Randomlist2_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

