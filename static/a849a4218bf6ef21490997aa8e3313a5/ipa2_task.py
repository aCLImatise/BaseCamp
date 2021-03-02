from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ipa2_Task_V0_1_0 = CommandToolBuilder(tool="ipa2_task", base_command=["ipa2-task"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ipa2_Task_V0_1_0().translate("wdl", allow_empty_container=True)

