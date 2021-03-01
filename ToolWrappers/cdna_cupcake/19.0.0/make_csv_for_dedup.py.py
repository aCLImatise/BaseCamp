from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Csv_For_Dedup_Py_V0_1_0 = CommandToolBuilder(tool="make_csv_for_dedup.py", base_command=["make_csv_for_dedup.py"], inputs=[], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Csv_For_Dedup_Py_V0_1_0().translate("wdl")

