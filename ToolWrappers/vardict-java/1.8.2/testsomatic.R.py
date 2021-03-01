from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Testsomatic_R_V0_1_0 = CommandToolBuilder(tool="testsomatic.R", base_command=["testsomatic.R"], inputs=[], outputs=[], container="quay.io/biocontainers/vardict-java:1.8.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Testsomatic_R_V0_1_0().translate("wdl")

