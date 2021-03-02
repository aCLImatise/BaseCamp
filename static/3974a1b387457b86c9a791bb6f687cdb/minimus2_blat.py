from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Minimus2_Blat_V0_1_0 = CommandToolBuilder(tool="minimus2_blat", base_command=["minimus2-blat"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Minimus2_Blat_V0_1_0().translate("wdl", allow_empty_container=True)

