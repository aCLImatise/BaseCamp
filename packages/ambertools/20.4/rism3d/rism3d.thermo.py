from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rism3D_Thermo_V0_1_0 = CommandToolBuilder(tool="rism3d.thermo", base_command=["rism3d.thermo"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rism3D_Thermo_V0_1_0().translate("wdl", allow_empty_container=True)

