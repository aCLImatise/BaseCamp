from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Parsealignment_V0_1_0 = CommandToolBuilder(tool="parseAlignment", base_command=["parseAlignment"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsealignment_V0_1_0().translate("wdl", allow_empty_container=True)

