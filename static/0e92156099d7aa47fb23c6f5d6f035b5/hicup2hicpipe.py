from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hicup2Hicpipe_V0_1_0 = CommandToolBuilder(tool="hicup2hicpipe", base_command=["hicup2hicpipe"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicup2Hicpipe_V0_1_0().translate("wdl", allow_empty_container=True)

