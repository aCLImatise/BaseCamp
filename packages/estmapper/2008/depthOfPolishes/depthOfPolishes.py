from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Depthofpolishes_V0_1_0 = CommandToolBuilder(tool="depthOfPolishes", base_command=["depthOfPolishes"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Depthofpolishes_V0_1_0().translate("wdl", allow_empty_container=True)

