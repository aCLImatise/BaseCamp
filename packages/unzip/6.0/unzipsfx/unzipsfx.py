from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Unzipsfx_V0_1_0 = CommandToolBuilder(tool="unzipsfx", base_command=["unzipsfx"], inputs=[], outputs=[], container="quay.io/biocontainers/unzip:6.0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unzipsfx_V0_1_0().translate("wdl")

