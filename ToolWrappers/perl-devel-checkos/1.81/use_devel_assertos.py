from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Use_Devel_Assertos_V0_1_0 = CommandToolBuilder(tool="use_devel_assertos", base_command=["use-devel-assertos"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Use_Devel_Assertos_V0_1_0().translate("wdl", allow_empty_container=True)

