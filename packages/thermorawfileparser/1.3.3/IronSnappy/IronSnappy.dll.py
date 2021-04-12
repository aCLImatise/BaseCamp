from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ironsnappy_Dll_V0_1_0 = CommandToolBuilder(tool="IronSnappy.dll", base_command=["IronSnappy.dll"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.3--ha8f3691_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ironsnappy_Dll_V0_1_0().translate("wdl")

