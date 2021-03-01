from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hcp_Getpdb_V0_1_0 = CommandToolBuilder(tool="hcp_getpdb", base_command=["hcp_getpdb"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hcp_Getpdb_V0_1_0().translate("wdl", allow_empty_container=True)

