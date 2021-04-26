from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Basenji_Motifs_Denovo_Py_V0_1_0 = CommandToolBuilder(tool="basenji_motifs_denovo.py", base_command=["basenji_motifs_denovo.py"], inputs=[], outputs=[], container="quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Motifs_Denovo_Py_V0_1_0().translate("wdl")

