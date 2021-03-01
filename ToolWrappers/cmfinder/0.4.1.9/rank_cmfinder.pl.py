from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rank_Cmfinder_Pl_V0_1_0 = CommandToolBuilder(tool="rank_cmfinder.pl", base_command=["rank_cmfinder.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rank_Cmfinder_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

