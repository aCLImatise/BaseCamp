from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Makefile_V0_1_0 = CommandToolBuilder(tool="Makefile", base_command=["Makefile"], inputs=[], outputs=[], container="quay.io/biocontainers/sensv:1.0.4--h2e03b76_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makefile_V0_1_0().translate("wdl")

