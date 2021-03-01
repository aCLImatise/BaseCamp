from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mirrormappings_V0_1_0 = CommandToolBuilder(tool="mirrorMappings", base_command=["mirrorMappings"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mirrormappings_V0_1_0().translate("wdl", allow_empty_container=True)

