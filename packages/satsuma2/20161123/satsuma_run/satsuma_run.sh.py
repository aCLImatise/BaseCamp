from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Satsuma_Run_Sh_V0_1_0 = CommandToolBuilder(tool="satsuma_run.sh", base_command=["satsuma_run.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Satsuma_Run_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

