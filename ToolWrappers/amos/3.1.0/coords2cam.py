from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Coords2Cam_V0_1_0 = CommandToolBuilder(tool="coords2cam", base_command=["coords2cam"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coords2Cam_V0_1_0().translate("wdl", allow_empty_container=True)

