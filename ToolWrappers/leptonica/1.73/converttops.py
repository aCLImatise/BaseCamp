from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Converttops_V0_1_0 = CommandToolBuilder(tool="converttops", base_command=["converttops"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Converttops_V0_1_0().translate("wdl", allow_empty_container=True)

