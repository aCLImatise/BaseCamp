from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clxdo_V0_1_0 = CommandToolBuilder(tool="clxdo", base_command=["clxdo"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clxdo_V0_1_0().translate("wdl", allow_empty_container=True)

