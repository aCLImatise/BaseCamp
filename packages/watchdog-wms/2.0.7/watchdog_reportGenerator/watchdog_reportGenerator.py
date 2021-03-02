from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Watchdog_Reportgenerator_V0_1_0 = CommandToolBuilder(tool="watchdog_reportGenerator", base_command=["watchdog-reportGenerator"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Watchdog_Reportgenerator_V0_1_0().translate("wdl", allow_empty_container=True)

