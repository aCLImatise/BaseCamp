from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plothaplrt_R_V0_1_0 = CommandToolBuilder(tool="plotHapLrt.R", base_command=["plotHapLrt.R"], inputs=[], outputs=[], container="quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plothaplrt_R_V0_1_0().translate("wdl")

