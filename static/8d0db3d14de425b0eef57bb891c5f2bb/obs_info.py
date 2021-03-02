from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Obs_Info_V0_1_0 = CommandToolBuilder(tool="obs_info", base_command=["obs-info"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obs_Info_V0_1_0().translate("wdl", allow_empty_container=True)

