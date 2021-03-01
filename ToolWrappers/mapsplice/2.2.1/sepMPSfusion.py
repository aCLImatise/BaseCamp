from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sepmpsfusion_V0_1_0 = CommandToolBuilder(tool="sepMPSfusion", base_command=["sepMPSfusion"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sepmpsfusion_V0_1_0().translate("wdl", allow_empty_container=True)

