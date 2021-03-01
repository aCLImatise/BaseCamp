from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mzn_Gecode_V0_1_0 = CommandToolBuilder(tool="mzn_gecode", base_command=["mzn-gecode"], inputs=[], outputs=[], container="quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mzn_Gecode_V0_1_0().translate("wdl")

