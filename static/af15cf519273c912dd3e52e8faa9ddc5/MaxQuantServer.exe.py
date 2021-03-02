from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maxquantserver_Exe_V0_1_0 = CommandToolBuilder(tool="MaxQuantServer.exe", base_command=["MaxQuantServer.exe"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maxquantserver_Exe_V0_1_0().translate("wdl", allow_empty_container=True)

