from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Msts_Xsd_V0_1_0 = CommandToolBuilder(tool="MSTS.xsd", base_command=["MSTS.xsd"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msts_Xsd_V0_1_0().translate("wdl", allow_empty_container=True)

