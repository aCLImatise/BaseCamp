from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fcsstats_R_V0_1_0 = CommandToolBuilder(tool="FCSstats.R", base_command=["FCSstats.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fcsstats_R_V0_1_0().translate("wdl", allow_empty_container=True)

