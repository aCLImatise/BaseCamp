from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bzip2Recover_V0_1_0 = CommandToolBuilder(tool="bzip2recover", base_command=["bzip2recover"], inputs=[], outputs=[], container="quay.io/biocontainers/bzip2:1.0.8", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bzip2Recover_V0_1_0().translate("wdl")

