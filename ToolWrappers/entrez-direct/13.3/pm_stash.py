from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pm_Stash_V0_1_0 = CommandToolBuilder(tool="pm_stash", base_command=["pm-stash"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pm_Stash_V0_1_0().translate("wdl", allow_empty_container=True)

