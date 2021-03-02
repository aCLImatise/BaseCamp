from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Jaffa_Hybrid_V0_1_0 = CommandToolBuilder(tool="jaffa_hybrid", base_command=["jaffa-hybrid"], inputs=[], outputs=[], container="quay.io/biocontainers/jaffa:2.00--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jaffa_Hybrid_V0_1_0().translate("wdl")

