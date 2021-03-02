from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Abawaca_V0_1_0 = CommandToolBuilder(tool="abawaca", base_command=["abawaca"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abawaca_V0_1_0().translate("wdl", allow_empty_container=True)

