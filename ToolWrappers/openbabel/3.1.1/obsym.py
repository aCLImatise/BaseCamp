from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Obsym_V0_1_0 = CommandToolBuilder(tool="obsym", base_command=["obsym"], inputs=[], outputs=[], container="quay.io/biocontainers/openbabel:3.1.1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obsym_V0_1_0().translate("wdl")

