from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mcmctree_V0_1_0 = CommandToolBuilder(tool="mcmctree", base_command=["mcmctree"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mcmctree_V0_1_0().translate("wdl", allow_empty_container=True)

