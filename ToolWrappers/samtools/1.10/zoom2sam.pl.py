from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Zoom2Sam_Pl_V0_1_0 = CommandToolBuilder(tool="zoom2sam.pl", base_command=["zoom2sam.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zoom2Sam_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

