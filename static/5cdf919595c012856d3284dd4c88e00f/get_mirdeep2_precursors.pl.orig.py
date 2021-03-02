from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Mirdeep2_Precursors_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="get_mirdeep2_precursors.pl.orig", base_command=["get_mirdeep2_precursors.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Mirdeep2_Precursors_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

