from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bamcollate2_V0_1_0 = CommandToolBuilder(tool="bamcollate2", base_command=["bamcollate2"], inputs=[], outputs=[], container="quay.io/biocontainers/biobambam:2.0.182--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamcollate2_V0_1_0().translate("wdl")

