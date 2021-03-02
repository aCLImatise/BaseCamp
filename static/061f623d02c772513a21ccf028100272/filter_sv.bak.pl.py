from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filter_Sv_Bak_Pl_V0_1_0 = CommandToolBuilder(tool="filter_sv.bak.pl", base_command=["filter_sv.bak.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Sv_Bak_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

