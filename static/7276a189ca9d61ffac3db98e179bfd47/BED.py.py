from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bed_Py_V0_1_0 = CommandToolBuilder(tool="BED.py", base_command=["BED.py"], inputs=[], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed_Py_V0_1_0().translate("wdl")

