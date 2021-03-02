from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Close_Gaps_Sh_V0_1_0 = CommandToolBuilder(tool="close_gaps.sh", base_command=["close_gaps.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Close_Gaps_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

