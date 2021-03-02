from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Python3_7_Config_V0_1_0 = CommandToolBuilder(tool="python3.7_config", base_command=["python3.7-config"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Python3_7_Config_V0_1_0().translate("wdl", allow_empty_container=True)

