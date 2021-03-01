from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Evofoldv2_Sh_V0_1_0 = CommandToolBuilder(tool="EvoFoldV2.sh", base_command=["EvoFoldV2.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Evofoldv2_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

