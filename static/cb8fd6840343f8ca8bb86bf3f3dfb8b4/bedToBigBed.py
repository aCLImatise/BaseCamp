from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bedtobigbed_V0_1_0 = CommandToolBuilder(tool="bedToBigBed", base_command=["bedToBigBed"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtobigbed_V0_1_0().translate("wdl", allow_empty_container=True)

