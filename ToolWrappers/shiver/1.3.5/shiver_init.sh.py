from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Shiver_Init_Sh_V0_1_0 = CommandToolBuilder(tool="shiver_init.sh", base_command=["shiver_init.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shiver_Init_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

