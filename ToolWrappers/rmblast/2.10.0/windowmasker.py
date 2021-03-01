from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Windowmasker_V0_1_0 = CommandToolBuilder(tool="windowmasker", base_command=["windowmasker"], inputs=[], outputs=[], container="quay.io/biocontainers/rmblast:2.10.0--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Windowmasker_V0_1_0().translate("wdl")

