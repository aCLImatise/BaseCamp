from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Kma_Update_V0_1_0 = CommandToolBuilder(tool="kma_update", base_command=["kma_update"], inputs=[], outputs=[], container="quay.io/biocontainers/kma:1.3.13--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kma_Update_V0_1_0().translate("wdl")

