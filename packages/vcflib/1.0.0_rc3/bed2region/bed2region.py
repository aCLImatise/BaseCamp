from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bed2Region_V0_1_0 = CommandToolBuilder(tool="bed2region", base_command=["bed2region"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed2Region_V0_1_0().translate("wdl", allow_empty_container=True)

