from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Starchcluster_Gnuparallel_Float128_V0_1_0 = CommandToolBuilder(tool="starchcluster_gnuParallel_float128", base_command=["starchcluster_gnuParallel-float128"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Starchcluster_Gnuparallel_Float128_V0_1_0().translate("wdl", allow_empty_container=True)

