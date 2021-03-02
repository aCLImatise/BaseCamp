from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Normalize_R_V0_1_0 = CommandToolBuilder(tool="normalize.R", base_command=["normalize.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Normalize_R_V0_1_0().translate("wdl", allow_empty_container=True)

