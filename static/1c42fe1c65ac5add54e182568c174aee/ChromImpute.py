from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Chromimpute_V0_1_0 = CommandToolBuilder(tool="ChromImpute", base_command=["ChromImpute"], inputs=[], outputs=[], container="quay.io/biocontainers/chromimpute:1.0.3--h1341992_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chromimpute_V0_1_0().translate("wdl")

