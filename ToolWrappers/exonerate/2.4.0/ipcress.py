from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ipcress_V0_1_0 = CommandToolBuilder(tool="ipcress", base_command=["ipcress"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ipcress_V0_1_0().translate("wdl", allow_empty_container=True)

