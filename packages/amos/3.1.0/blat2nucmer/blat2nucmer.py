from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Blat2Nucmer_V0_1_0 = CommandToolBuilder(tool="blat2nucmer", base_command=["blat2nucmer"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blat2Nucmer_V0_1_0().translate("wdl", allow_empty_container=True)

