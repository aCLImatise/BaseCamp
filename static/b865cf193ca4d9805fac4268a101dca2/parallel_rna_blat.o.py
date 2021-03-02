from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Parallel_Rna_Blat_O_V0_1_0 = CommandToolBuilder(tool="parallel_rna_blat.o", base_command=["parallel_rna_blat.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parallel_Rna_Blat_O_V0_1_0().translate("wdl", allow_empty_container=True)

