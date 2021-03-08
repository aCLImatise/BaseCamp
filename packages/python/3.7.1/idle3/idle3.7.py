from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Idle3_7_V0_1_0 = CommandToolBuilder(tool="idle3.7", base_command=["idle3.7"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Idle3_7_V0_1_0().translate("wdl", allow_empty_container=True)

