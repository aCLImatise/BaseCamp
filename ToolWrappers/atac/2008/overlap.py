from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Overlap_V0_1_0 = CommandToolBuilder(tool="overlap", base_command=["overlap"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Overlap_V0_1_0().translate("wdl", allow_empty_container=True)

