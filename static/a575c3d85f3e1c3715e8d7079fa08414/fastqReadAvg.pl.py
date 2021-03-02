from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastqreadavg_Pl_V0_1_0 = CommandToolBuilder(tool="fastqReadAvg.pl", base_command=["fastqReadAvg.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqreadavg_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

