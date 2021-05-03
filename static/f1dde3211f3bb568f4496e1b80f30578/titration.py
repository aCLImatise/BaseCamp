from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Titration_V0_1_0 = CommandToolBuilder(tool="titration", base_command=["titration"], inputs=[], outputs=[], container="quay.io/biocontainers/cmip:2.6.5--h8c3ec31_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Titration_V0_1_0().translate("wdl")

