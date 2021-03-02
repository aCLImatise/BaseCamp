from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cyclone_V0_1_0 = CommandToolBuilder(tool="cyclone", base_command=["cyclone"], inputs=[], outputs=[], container="quay.io/biocontainers/pypairs:3.2.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cyclone_V0_1_0().translate("wdl")

