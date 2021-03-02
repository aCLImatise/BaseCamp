from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Byobu_Select_Backend_V0_1_0 = CommandToolBuilder(tool="byobu_select_backend", base_command=["byobu-select-backend"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Byobu_Select_Backend_V0_1_0().translate("wdl", allow_empty_container=True)

