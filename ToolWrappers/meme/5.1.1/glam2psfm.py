from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Glam2Psfm_V0_1_0 = CommandToolBuilder(tool="glam2psfm", base_command=["glam2psfm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Glam2Psfm_V0_1_0().translate("wdl", allow_empty_container=True)

