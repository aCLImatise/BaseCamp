from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mglobrms_V0_1_0 = CommandToolBuilder(tool="mglobrms", base_command=["mglobrms"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mglobrms_V0_1_0().translate("wdl", allow_empty_container=True)

