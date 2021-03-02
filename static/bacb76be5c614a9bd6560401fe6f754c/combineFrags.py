from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Combinefrags_V0_1_0 = CommandToolBuilder(tool="combineFrags", base_command=["combineFrags"], inputs=[], outputs=[], container="quay.io/biocontainers/gecko:1.2--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combinefrags_V0_1_0().translate("wdl")

