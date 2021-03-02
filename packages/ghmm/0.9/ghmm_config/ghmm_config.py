from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ghmm_Config_V0_1_0 = CommandToolBuilder(tool="ghmm_config", base_command=["ghmm-config"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ghmm_Config_V0_1_0().translate("wdl", allow_empty_container=True)

