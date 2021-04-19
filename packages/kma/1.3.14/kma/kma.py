from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Kma_V0_1_0 = CommandToolBuilder(tool="kma", base_command=["kma"], inputs=[], outputs=[], container="quay.io/biocontainers/kma:1.3.14--h5bf99c6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kma_V0_1_0().translate("wdl")

