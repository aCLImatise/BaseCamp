from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Segway_Task_V0_1_0 = CommandToolBuilder(tool="segway_task", base_command=["segway-task"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segway_Task_V0_1_0().translate("wdl", allow_empty_container=True)

