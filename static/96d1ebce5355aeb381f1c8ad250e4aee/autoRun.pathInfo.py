from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Autorun_Pathinfo_V0_1_0 = CommandToolBuilder(tool="autoRun.pathInfo", base_command=["autoRun.pathInfo"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Autorun_Pathinfo_V0_1_0().translate("wdl", allow_empty_container=True)

