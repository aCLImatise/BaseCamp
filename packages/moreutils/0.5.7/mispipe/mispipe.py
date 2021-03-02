from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mispipe_V0_1_0 = CommandToolBuilder(tool="mispipe", base_command=["mispipe"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mispipe_V0_1_0().translate("wdl", allow_empty_container=True)

