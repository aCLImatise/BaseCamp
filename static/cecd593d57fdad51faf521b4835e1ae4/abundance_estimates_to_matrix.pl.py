from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Abundance_Estimates_To_Matrix_Pl_V0_1_0 = CommandToolBuilder(tool="abundance_estimates_to_matrix.pl", base_command=["abundance_estimates_to_matrix.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/trinity:2.12.0--h5ef6573_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abundance_Estimates_To_Matrix_Pl_V0_1_0().translate("wdl")

