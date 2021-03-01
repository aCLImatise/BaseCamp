from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Intersect_V0_1_0 = CommandToolBuilder(tool="intersect", base_command=["intersect"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Intersect_V0_1_0().translate("wdl", allow_empty_container=True)

