from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Coordinate_Batch_Sh_V0_1_0 = CommandToolBuilder(tool="coordinate_batch.sh", base_command=["coordinate_batch.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/eukulele:1.0.2--pyhcb32578_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coordinate_Batch_Sh_V0_1_0().translate("wdl")

