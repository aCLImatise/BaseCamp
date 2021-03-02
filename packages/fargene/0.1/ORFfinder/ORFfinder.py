from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Orffinder_V0_1_0 = CommandToolBuilder(tool="ORFfinder", base_command=["ORFfinder"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orffinder_V0_1_0().translate("wdl", allow_empty_container=True)

