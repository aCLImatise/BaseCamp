from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fsc_Bat_V0_1_0 = CommandToolBuilder(tool="fsc.bat", base_command=["fsc.bat"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fsc_Bat_V0_1_0().translate("wdl", allow_empty_container=True)

