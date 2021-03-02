from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bogus_V0_1_0 = CommandToolBuilder(tool="bogus", base_command=["bogus"], inputs=[], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bogus_V0_1_0().translate("wdl")

