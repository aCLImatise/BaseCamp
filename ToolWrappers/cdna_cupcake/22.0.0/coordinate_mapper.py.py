from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Coordinate_Mapper_Py_V0_1_0 = CommandToolBuilder(tool="coordinate_mapper.py", base_command=["coordinate_mapper.py"], inputs=[], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coordinate_Mapper_Py_V0_1_0().translate("wdl")

