from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Log4Net_Config_V0_1_0 = CommandToolBuilder(tool="log4net.config", base_command=["log4net.config"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Log4Net_Config_V0_1_0().translate("wdl", allow_empty_container=True)

