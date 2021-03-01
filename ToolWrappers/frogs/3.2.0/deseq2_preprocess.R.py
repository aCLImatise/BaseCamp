from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Deseq2_Preprocess_R_V0_1_0 = CommandToolBuilder(tool="deseq2_preprocess.R", base_command=["deseq2_preprocess.R"], inputs=[], outputs=[], container="quay.io/biocontainers/frogs:3.2.0--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deseq2_Preprocess_R_V0_1_0().translate("wdl")

