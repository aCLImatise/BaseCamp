from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Swap_Dranger_And_Mps_Matched_V0_1_0 = CommandToolBuilder(tool="swap_dRanger_and_MPS_matched", base_command=["swap_dRanger_and_MPS_matched"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Swap_Dranger_And_Mps_Matched_V0_1_0().translate("wdl", allow_empty_container=True)

