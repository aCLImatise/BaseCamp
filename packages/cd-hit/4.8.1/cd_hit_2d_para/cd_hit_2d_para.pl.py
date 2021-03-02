from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cd_Hit_2D_Para_Pl_V0_1_0 = CommandToolBuilder(tool="cd_hit_2d_para.pl", base_command=["cd-hit-2d-para.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cd_Hit_2D_Para_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

