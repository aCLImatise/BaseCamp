from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ega2_V0_1_0 = CommandToolBuilder(tool="ega2", base_command=["ega2"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ega2_V0_1_0().translate("wdl", allow_empty_container=True)

