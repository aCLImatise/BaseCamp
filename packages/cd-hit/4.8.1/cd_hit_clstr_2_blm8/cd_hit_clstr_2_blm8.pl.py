from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cd_Hit_Clstr_2_Blm8_Pl_V0_1_0 = CommandToolBuilder(tool="cd_hit_clstr_2_blm8.pl", base_command=["cd-hit-clstr_2_blm8.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cd_Hit_Clstr_2_Blm8_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

