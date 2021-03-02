from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ps2Ps_Input_Ps_V0_1_0 = CommandToolBuilder(tool="ps2ps_input.ps", base_command=["ps2ps", "input.ps"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ps2Ps_Input_Ps_V0_1_0().translate("wdl", allow_empty_container=True)

