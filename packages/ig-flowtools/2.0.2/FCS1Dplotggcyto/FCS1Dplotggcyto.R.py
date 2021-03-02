from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fcs1Dplotggcyto_R_V0_1_0 = CommandToolBuilder(tool="FCS1Dplotggcyto.R", base_command=["FCS1Dplotggcyto.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fcs1Dplotggcyto_R_V0_1_0().translate("wdl", allow_empty_container=True)

