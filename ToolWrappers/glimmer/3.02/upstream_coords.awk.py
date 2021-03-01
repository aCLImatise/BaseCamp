from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Upstream_Coords_Awk_V0_1_0 = CommandToolBuilder(tool="upstream_coords.awk", base_command=["upstream-coords.awk"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Upstream_Coords_Awk_V0_1_0().translate("wdl", allow_empty_container=True)

