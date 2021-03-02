from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Featmerge_V0_1_0 = CommandToolBuilder(tool="featmerge", base_command=["featmerge"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Featmerge_V0_1_0().translate("wdl", allow_empty_container=True)

