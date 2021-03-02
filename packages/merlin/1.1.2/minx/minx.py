from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Minx_V0_1_0 = CommandToolBuilder(tool="minx", base_command=["minx"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Minx_V0_1_0().translate("wdl", allow_empty_container=True)

