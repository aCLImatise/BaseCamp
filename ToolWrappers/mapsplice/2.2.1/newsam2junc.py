from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Newsam2Junc_V0_1_0 = CommandToolBuilder(tool="newsam2junc", base_command=["newsam2junc"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Newsam2Junc_V0_1_0().translate("wdl", allow_empty_container=True)

