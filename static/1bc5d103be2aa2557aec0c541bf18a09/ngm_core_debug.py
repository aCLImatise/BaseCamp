from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ngm_Core_Debug_V0_1_0 = CommandToolBuilder(tool="ngm_core_debug", base_command=["ngm-core-debug"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngm_Core_Debug_V0_1_0().translate("wdl", allow_empty_container=True)

