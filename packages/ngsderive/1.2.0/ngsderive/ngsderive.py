from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ngsderive_V0_1_0 = CommandToolBuilder(tool="ngsderive", base_command=["ngsderive"], inputs=[], outputs=[], container="quay.io/biocontainers/ngsderive:1.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngsderive_V0_1_0().translate("wdl")

