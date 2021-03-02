from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Msi_Clustr_Add_Size_Pl_V0_1_0 = CommandToolBuilder(tool="msi_clustr_add_size.pl", base_command=["msi_clustr_add_size.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/msi:0.3.5--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msi_Clustr_Add_Size_Pl_V0_1_0().translate("wdl")

