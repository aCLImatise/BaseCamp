from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Triangle2List_Pl_V0_1_0 = CommandToolBuilder(tool="triangle2list.pl", base_command=["triangle2list.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Triangle2List_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

