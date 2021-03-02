from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Kma_Shm_V0_1_0 = CommandToolBuilder(tool="kma_shm", base_command=["kma_shm"], inputs=[], outputs=[], container="quay.io/biocontainers/kma:1.3.12--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kma_Shm_V0_1_0().translate("wdl")

