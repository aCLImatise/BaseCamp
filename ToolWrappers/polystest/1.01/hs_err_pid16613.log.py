from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hs_Err_Pid16613_Log_V0_1_0 = CommandToolBuilder(tool="hs_err_pid16613.log", base_command=["hs_err_pid16613.log"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hs_Err_Pid16613_Log_V0_1_0().translate("wdl", allow_empty_container=True)

