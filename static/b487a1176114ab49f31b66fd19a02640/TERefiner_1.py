from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Terefiner_1_V0_1_0 = CommandToolBuilder(tool="TERefiner_1", base_command=["TERefiner_1"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Terefiner_1_V0_1_0().translate("wdl", allow_empty_container=True)

