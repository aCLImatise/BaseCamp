from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Peptide_Shaker_V0_1_0 = CommandToolBuilder(tool="peptide_shaker", base_command=["peptide-shaker"], inputs=[], outputs=[], container="quay.io/biocontainers/peptide-shaker:2.0.18--h779adbc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peptide_Shaker_V0_1_0().translate("wdl")

