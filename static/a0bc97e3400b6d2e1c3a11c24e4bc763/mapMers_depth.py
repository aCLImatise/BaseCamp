from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mapmers_Depth_V0_1_0 = CommandToolBuilder(tool="mapMers_depth", base_command=["mapMers-depth"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapmers_Depth_V0_1_0().translate("wdl", allow_empty_container=True)

