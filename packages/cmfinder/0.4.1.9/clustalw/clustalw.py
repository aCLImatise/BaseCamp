from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clustalw_V0_1_0 = CommandToolBuilder(tool="clustalw", base_command=["clustalw"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustalw_V0_1_0().translate("wdl", allow_empty_container=True)

