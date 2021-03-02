from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sparepeats_Fasta_V0_1_0 = CommandToolBuilder(tool="sparepeats.fasta", base_command=["sparepeats.fasta"], inputs=[], outputs=[], container="quay.io/biocontainers/spatyper:0.3.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sparepeats_Fasta_V0_1_0().translate("wdl")

