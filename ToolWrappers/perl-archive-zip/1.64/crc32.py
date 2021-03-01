from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Crc32_V0_1_0 = CommandToolBuilder(tool="crc32", base_command=["crc32"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crc32_V0_1_0().translate("wdl", allow_empty_container=True)

