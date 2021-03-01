from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rankprodbounds_R_V0_1_0 = CommandToolBuilder(tool="rankprodbounds.R", base_command=["rankprodbounds.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rankprodbounds_R_V0_1_0().translate("wdl", allow_empty_container=True)

