from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fasta_Make_Index_V0_1_0 = CommandToolBuilder(tool="fasta_make_index", base_command=["fasta-make-index"], inputs=[], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Make_Index_V0_1_0().translate("wdl")

