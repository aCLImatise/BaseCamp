from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


H_Num_Pl_V0_1_0 = CommandToolBuilder(tool="h_num.pl", base_command=["h-num.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    H_Num_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

