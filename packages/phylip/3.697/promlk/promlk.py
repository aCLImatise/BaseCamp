from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Promlk_V0_1_0 = CommandToolBuilder(tool="promlk", base_command=["promlk"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Promlk_V0_1_0().translate("wdl", allow_empty_container=True)

