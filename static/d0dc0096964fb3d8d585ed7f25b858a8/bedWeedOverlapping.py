from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bedweedoverlapping_V0_1_0 = CommandToolBuilder(tool="bedWeedOverlapping", base_command=["bedWeedOverlapping"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedweedoverlapping_V0_1_0().translate("wdl", allow_empty_container=True)

