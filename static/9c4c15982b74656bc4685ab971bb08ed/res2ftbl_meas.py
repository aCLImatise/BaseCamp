from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Res2Ftbl_Meas_V0_1_0 = CommandToolBuilder(tool="res2ftbl_meas", base_command=["res2ftbl_meas"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Res2Ftbl_Meas_V0_1_0().translate("wdl", allow_empty_container=True)

