from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Show_V0_1_0 = CommandToolBuilder(tool="show", base_command=["show"], inputs=[], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Show_V0_1_0().translate("wdl")

