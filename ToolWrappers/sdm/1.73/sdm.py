from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sdm_V0_1_0 = CommandToolBuilder(tool="sdm", base_command=["sdm"], inputs=[], outputs=[], container="quay.io/biocontainers/sdm:1.73--he513fc3_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sdm_V0_1_0().translate("wdl")

