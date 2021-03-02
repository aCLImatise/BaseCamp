from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ete3_V0_1_0 = CommandToolBuilder(tool="ete3", base_command=["ete3"], inputs=[], outputs=[], container="quay.io/biocontainers/ete3:3.1.2", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ete3_V0_1_0().translate("wdl")

