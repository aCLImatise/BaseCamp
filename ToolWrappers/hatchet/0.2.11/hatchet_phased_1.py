from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hatchet_Phased_1_V0_1_0 = CommandToolBuilder(tool="hatchet_phased_1", base_command=["hatchet_phased_1"], inputs=[], outputs=[], container="quay.io/biocontainers/hatchet:0.2.11--py37h22450f8_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hatchet_Phased_1_V0_1_0().translate("wdl")

