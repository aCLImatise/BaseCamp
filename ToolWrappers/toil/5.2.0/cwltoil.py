from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cwltoil_V0_1_0 = CommandToolBuilder(tool="cwltoil", base_command=["cwltoil"], inputs=[], outputs=[], container="quay.io/biocontainers/toil:5.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cwltoil_V0_1_0().translate("wdl")

