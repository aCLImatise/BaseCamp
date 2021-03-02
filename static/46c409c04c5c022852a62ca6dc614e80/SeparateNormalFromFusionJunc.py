from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Separatenormalfromfusionjunc_V0_1_0 = CommandToolBuilder(tool="SeparateNormalFromFusionJunc", base_command=["SeparateNormalFromFusionJunc"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Separatenormalfromfusionjunc_V0_1_0().translate("wdl", allow_empty_container=True)

