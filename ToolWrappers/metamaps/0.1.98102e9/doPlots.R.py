from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Doplots_R_V0_1_0 = CommandToolBuilder(tool="doPlots.R", base_command=["doPlots.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Doplots_R_V0_1_0().translate("wdl", allow_empty_container=True)

