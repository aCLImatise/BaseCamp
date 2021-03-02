from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


List_Modules_V0_1_0 = CommandToolBuilder(tool="list.modules", base_command=["list.modules"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    List_Modules_V0_1_0().translate("wdl", allow_empty_container=True)

