from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dbg2Olc_V0_1_0 = CommandToolBuilder(tool="DBG2OLC", base_command=["DBG2OLC"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbg2Olc_V0_1_0().translate("wdl", allow_empty_container=True)

