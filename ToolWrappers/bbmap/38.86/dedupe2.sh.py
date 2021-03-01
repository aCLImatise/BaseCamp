from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dedupe2_Sh_V0_1_0 = CommandToolBuilder(tool="dedupe2.sh", base_command=["dedupe2.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dedupe2_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

