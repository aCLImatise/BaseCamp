from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Decompose_V0_1_0 = CommandToolBuilder(tool="decompose", base_command=["decompose"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Decompose_V0_1_0().translate("wdl", allow_empty_container=True)

