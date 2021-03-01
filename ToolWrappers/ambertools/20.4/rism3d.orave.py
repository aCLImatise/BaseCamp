from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rism3D_Orave_V0_1_0 = CommandToolBuilder(tool="rism3d.orave", base_command=["rism3d.orave"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rism3D_Orave_V0_1_0().translate("wdl", allow_empty_container=True)

