from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


2To3_V0_1_0 = CommandToolBuilder(tool="2to3", base_command=["2to3"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    2To3_V0_1_0().translate("wdl", allow_empty_container=True)

