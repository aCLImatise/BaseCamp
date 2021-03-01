from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pairwise2Maf_Py_V0_1_0 = CommandToolBuilder(tool="pairwise2maf.py", base_command=["pairwise2maf.py"], inputs=[], outputs=[], container="quay.io/biocontainers/nanosim:2.6.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pairwise2Maf_Py_V0_1_0().translate("wdl")

