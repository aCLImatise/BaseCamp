from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rbox_D3_V0_1_0 = CommandToolBuilder(tool="rbox_D3", base_command=["rbox", "D3"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbox_D3_V0_1_0().translate("wdl", allow_empty_container=True)

