from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ngspsmc_V0_1_0 = CommandToolBuilder(tool="ngsPSMC", base_command=["ngsPSMC"], inputs=[], outputs=[], container="quay.io/biocontainers/angsd:0.935--hd2e4403_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ngspsmc_V0_1_0().translate("wdl")

