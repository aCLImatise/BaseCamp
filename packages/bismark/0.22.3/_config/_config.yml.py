from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Config_Yml_V0_1_0 = CommandToolBuilder(tool="_config.yml", base_command=["_config.yml"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Config_Yml_V0_1_0().translate("wdl", allow_empty_container=True)

