from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Moose_Outdated_V0_1_0 = CommandToolBuilder(tool="moose_outdated", base_command=["moose-outdated"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Moose_Outdated_V0_1_0().translate("wdl", allow_empty_container=True)

