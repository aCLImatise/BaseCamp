from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gtf2Genetab_V0_1_0 = CommandToolBuilder(tool="gtf2genetab", base_command=["gtf2genetab"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtf2Genetab_V0_1_0().translate("wdl", allow_empty_container=True)

