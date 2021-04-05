from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


D2_Alphadivphyloseq_R_V0_1_0 = CommandToolBuilder(tool="D2_AlphaDivPhyloseq.R", base_command=["D2-AlphaDivPhyloseq.R"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.7.7--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    D2_Alphadivphyloseq_R_V0_1_0().translate("wdl")

