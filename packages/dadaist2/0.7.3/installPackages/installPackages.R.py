from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Installpackages_R_V0_1_0 = CommandToolBuilder(tool="installPackages.R", base_command=["installPackages.R"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.7.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Installpackages_R_V0_1_0().translate("wdl")

