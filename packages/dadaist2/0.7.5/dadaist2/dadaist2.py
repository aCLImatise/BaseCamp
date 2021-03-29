from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dadaist2_V0_1_0 = CommandToolBuilder(tool="dadaist2", base_command=["dadaist2"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.7.5--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dadaist2_V0_1_0().translate("wdl")

