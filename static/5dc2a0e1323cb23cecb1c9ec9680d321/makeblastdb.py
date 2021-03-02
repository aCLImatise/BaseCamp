from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Makeblastdb_V0_1_0 = CommandToolBuilder(tool="makeblastdb", base_command=["makeblastdb"], inputs=[], outputs=[], container="quay.io/biocontainers/rmblast:2.10.0--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makeblastdb_V0_1_0().translate("wdl")

