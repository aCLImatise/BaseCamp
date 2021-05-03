from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Linx_V0_1_0 = CommandToolBuilder(tool="linx", base_command=["linx"], inputs=[], outputs=[], container="quay.io/biocontainers/hmftools-linx:1.15--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Linx_V0_1_0().translate("wdl")

