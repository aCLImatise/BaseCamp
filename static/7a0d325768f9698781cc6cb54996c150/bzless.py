from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bzless_V0_1_0 = CommandToolBuilder(tool="bzless", base_command=["bzless"], inputs=[], outputs=[], container="quay.io/biocontainers/bzip2:1.0.8", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bzless_V0_1_0().translate("wdl")

