from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Daisysuite_Setup_V0_1_0 = CommandToolBuilder(tool="DaisySuite_setup", base_command=["DaisySuite_setup"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Daisysuite_Setup_V0_1_0().translate("wdl", allow_empty_container=True)

