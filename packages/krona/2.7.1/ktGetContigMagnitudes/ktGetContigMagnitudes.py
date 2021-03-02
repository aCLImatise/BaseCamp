from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ktgetcontigmagnitudes_V0_1_0 = CommandToolBuilder(tool="ktGetContigMagnitudes", base_command=["ktGetContigMagnitudes"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktgetcontigmagnitudes_V0_1_0().translate("wdl", allow_empty_container=True)

