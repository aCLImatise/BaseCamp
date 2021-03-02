from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ctgovl_V0_1_0 = CommandToolBuilder(tool="ctgovl", base_command=["ctgovl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ctgovl_V0_1_0().translate("wdl", allow_empty_container=True)

