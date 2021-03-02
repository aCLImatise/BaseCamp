from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Byobu_Export_V0_1_0 = CommandToolBuilder(tool="byobu_export", base_command=["byobu-export"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Byobu_Export_V0_1_0().translate("wdl", allow_empty_container=True)

