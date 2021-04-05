from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hopla_V0_1_0 = CommandToolBuilder(tool="hopla", base_command=["hopla"], inputs=[], outputs=[], container="quay.io/biocontainers/hopla:0.1.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hopla_V0_1_0().translate("wdl")

