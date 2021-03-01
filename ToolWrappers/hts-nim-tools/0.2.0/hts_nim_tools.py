from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hts_Nim_Tools_V0_1_0 = CommandToolBuilder(tool="hts_nim_tools", base_command=["hts_nim_tools"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hts_Nim_Tools_V0_1_0().translate("wdl", allow_empty_container=True)

