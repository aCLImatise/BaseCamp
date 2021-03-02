from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Expand_Current_V0_1_0 = CommandToolBuilder(tool="expand_current", base_command=["expand-current"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Expand_Current_V0_1_0().translate("wdl", allow_empty_container=True)

