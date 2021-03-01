from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dnamove_V0_1_0 = CommandToolBuilder(tool="dnamove", base_command=["dnamove"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnamove_V0_1_0().translate("wdl", allow_empty_container=True)

