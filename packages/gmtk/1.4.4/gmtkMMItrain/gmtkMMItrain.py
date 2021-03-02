from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gmtkmmitrain_V0_1_0 = CommandToolBuilder(tool="gmtkMMItrain", base_command=["gmtkMMItrain"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gmtkmmitrain_V0_1_0().translate("wdl", allow_empty_container=True)

