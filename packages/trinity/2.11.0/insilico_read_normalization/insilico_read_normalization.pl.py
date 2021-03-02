from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Insilico_Read_Normalization_Pl_V0_1_0 = CommandToolBuilder(tool="insilico_read_normalization.pl", base_command=["insilico_read_normalization.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/trinity:2.11.0--h5ef6573_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Insilico_Read_Normalization_Pl_V0_1_0().translate("wdl")

