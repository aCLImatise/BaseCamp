from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Stats_V0_1_0 = CommandToolBuilder(tool="stats", base_command=["stats"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stats_V0_1_0().translate("wdl", allow_empty_container=True)

