from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Starchcluster_Gnuparallel_V0_1_0 = CommandToolBuilder(tool="starchcluster_gnuParallel", base_command=["starchcluster_gnuParallel"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Starchcluster_Gnuparallel_V0_1_0().translate("wdl", allow_empty_container=True)

