from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Wublasttocrossmatch_Pl_V0_1_0 = CommandToolBuilder(tool="wublastToCrossmatch.pl", base_command=["wublastToCrossmatch.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/repeatmasker:4.1.1--pl526_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wublasttocrossmatch_Pl_V0_1_0().translate("wdl")

