from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rism1D_V0_1_0 = CommandToolBuilder(tool="rism1d", base_command=["rism1d"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rism1D_V0_1_0().translate("wdl", allow_empty_container=True)

