from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dbsnp_Idx_V0_1_0 = CommandToolBuilder(tool="dbSNP_idx", base_command=["dbSNP_idx"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbsnp_Idx_V0_1_0().translate("wdl", allow_empty_container=True)

