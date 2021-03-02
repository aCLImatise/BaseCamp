from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Recompute_Astat_Superreads_Sh_V0_1_0 = CommandToolBuilder(tool="recompute_astat_superreads.sh", base_command=["recompute_astat_superreads.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Recompute_Astat_Superreads_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

