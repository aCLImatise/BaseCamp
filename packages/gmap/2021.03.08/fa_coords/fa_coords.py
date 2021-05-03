from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fa_Coords_V0_1_0 = CommandToolBuilder(tool="fa_coords", base_command=["fa_coords"], inputs=[], outputs=[], container="quay.io/biocontainers/gmap:2021.03.08--pl5262h36cd882_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fa_Coords_V0_1_0().translate("wdl")

