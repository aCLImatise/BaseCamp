from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maf2Lav_V0_1_0 = CommandToolBuilder(tool="maf2lav", base_command=["maf2lav"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf2Lav_V0_1_0().translate("wdl", allow_empty_container=True)

