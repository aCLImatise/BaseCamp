from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pepcat_V0_1_0 = CommandToolBuilder(tool="pepcat", base_command=["pepcat"], inputs=[], outputs=[], container="quay.io/biocontainers/proteowizard:3.0.9992", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pepcat_V0_1_0().translate("wdl")

