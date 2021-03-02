from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Split_Wiggle_Pl_V0_1_0 = CommandToolBuilder(tool="split_wiggle.pl", base_command=["split_wiggle.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Wiggle_Pl_V0_1_0().translate("wdl")

