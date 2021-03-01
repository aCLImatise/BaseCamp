from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Aggregatecontigoverlapsbybin_Pl_V0_1_0 = CommandToolBuilder(tool="aggregateContigOverlapsByBin.pl", base_command=["aggregateContigOverlapsByBin.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aggregatecontigoverlapsbybin_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

