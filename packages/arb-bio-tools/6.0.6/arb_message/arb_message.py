from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Arb_Message_V0_1_0 = CommandToolBuilder(tool="arb_message", base_command=["arb_message"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arb_Message_V0_1_0().translate("wdl", allow_empty_container=True)

