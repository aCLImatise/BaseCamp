from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lumpy_Filter_V0_1_0 = CommandToolBuilder(tool="lumpy_filter", base_command=["lumpy_filter"], inputs=[], outputs=[], container="quay.io/biocontainers/lumpy-sv-minimal:0.3.1--h5ef6573_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lumpy_Filter_V0_1_0().translate("wdl")

