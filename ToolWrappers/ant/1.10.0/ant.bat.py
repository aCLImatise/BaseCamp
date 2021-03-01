from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ant_Bat_V0_1_0 = CommandToolBuilder(tool="ant.bat", base_command=["ant.bat"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ant_Bat_V0_1_0().translate("wdl", allow_empty_container=True)

