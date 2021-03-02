from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Evol_V0_1_0 = CommandToolBuilder(tool="evol", base_command=["evol"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Evol_V0_1_0().translate("wdl", allow_empty_container=True)

