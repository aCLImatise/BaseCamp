from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Wiggletools_V0_1_0 = CommandToolBuilder(tool="wiggletools", base_command=["wiggletools"], inputs=[], outputs=[], container="quay.io/biocontainers/wiggletools:1.2.10--hd00f096_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wiggletools_V0_1_0().translate("wdl")

