from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bam12Strip_V0_1_0 = CommandToolBuilder(tool="bam12strip", base_command=["bam12strip"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam12Strip_V0_1_0().translate("wdl", allow_empty_container=True)

