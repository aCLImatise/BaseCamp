from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Runpolystestcli_R_V0_1_0 = CommandToolBuilder(tool="runPolySTestCLI.R", base_command=["runPolySTestCLI.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runpolystestcli_R_V0_1_0().translate("wdl", allow_empty_container=True)

