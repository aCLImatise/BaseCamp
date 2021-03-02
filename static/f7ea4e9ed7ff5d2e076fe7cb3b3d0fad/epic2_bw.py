from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Epic2_Bw_V0_1_0 = CommandToolBuilder(tool="epic2_bw", base_command=["epic2-bw"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Epic2_Bw_V0_1_0().translate("wdl", allow_empty_container=True)

