from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Runrc_Cmd_V0_1_0 = CommandToolBuilder(tool="runrc.cmd", base_command=["runrc.cmd"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runrc_Cmd_V0_1_0().translate("wdl", allow_empty_container=True)

