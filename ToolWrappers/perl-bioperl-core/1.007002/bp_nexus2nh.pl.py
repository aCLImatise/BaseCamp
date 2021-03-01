from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bp_Nexus2Nh_Pl_V0_1_0 = CommandToolBuilder(tool="bp_nexus2nh.pl", base_command=["bp_nexus2nh.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Nexus2Nh_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

