from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastaclip_V0_1_0 = CommandToolBuilder(tool="fastaclip", base_command=["fastaclip"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastaclip_V0_1_0().translate("wdl", allow_empty_container=True)

