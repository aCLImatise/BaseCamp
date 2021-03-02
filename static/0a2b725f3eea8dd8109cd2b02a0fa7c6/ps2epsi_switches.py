from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ps2Epsi_Switches_V0_1_0 = CommandToolBuilder(tool="ps2epsi_switches", base_command=["ps2epsi", "switches"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ps2Epsi_Switches_V0_1_0().translate("wdl", allow_empty_container=True)

