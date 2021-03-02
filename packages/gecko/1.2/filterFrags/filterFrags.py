from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filterfrags_V0_1_0 = CommandToolBuilder(tool="filterFrags", base_command=["filterFrags"], inputs=[], outputs=[], container="quay.io/biocontainers/gecko:1.2--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filterfrags_V0_1_0().translate("wdl")

