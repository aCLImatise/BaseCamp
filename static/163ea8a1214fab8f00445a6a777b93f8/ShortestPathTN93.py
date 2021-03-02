from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Shortestpathtn93_V0_1_0 = CommandToolBuilder(tool="ShortestPathTN93", base_command=["ShortestPathTN93"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shortestpathtn93_V0_1_0().translate("wdl", allow_empty_container=True)

