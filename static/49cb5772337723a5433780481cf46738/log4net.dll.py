from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Log4Net_Dll_V0_1_0 = CommandToolBuilder(tool="log4net.dll", base_command=["log4net.dll"], inputs=[], outputs=[], container="quay.io/biocontainers/thermorawfileparser:1.3.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Log4Net_Dll_V0_1_0().translate("wdl")

