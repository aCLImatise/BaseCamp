from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cannoli_Submit_V0_1_0 = CommandToolBuilder(tool="cannoli_submit", base_command=["cannoli-submit"], inputs=[], outputs=[], container="quay.io/biocontainers/cannoli:0.12.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cannoli_Submit_V0_1_0().translate("wdl")

