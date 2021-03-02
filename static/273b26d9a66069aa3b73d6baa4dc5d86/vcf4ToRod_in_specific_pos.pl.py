from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vcf4Torod_In_Specific_Pos_Pl_V0_1_0 = CommandToolBuilder(tool="vcf4ToRod_in_specific_pos.pl", base_command=["vcf4ToRod_in_specific_pos.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf4Torod_In_Specific_Pos_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

