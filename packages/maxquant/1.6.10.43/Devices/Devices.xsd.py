from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Devices_Xsd_V0_1_0 = CommandToolBuilder(tool="Devices.xsd", base_command=["Devices.xsd"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Devices_Xsd_V0_1_0().translate("wdl", allow_empty_container=True)

