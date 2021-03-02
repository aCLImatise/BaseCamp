from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Metabinkit_Shared_Sh_V0_1_0 = CommandToolBuilder(tool="metabinkit_shared.sh", base_command=["metabinkit_shared.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/metabinkit:0.2.2--r40hed695b0_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metabinkit_Shared_Sh_V0_1_0().translate("wdl")

