from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Repfind_Pl_V0_1_0 = CommandToolBuilder(tool="repfind.pl", base_command=["repfind.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Repfind_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

