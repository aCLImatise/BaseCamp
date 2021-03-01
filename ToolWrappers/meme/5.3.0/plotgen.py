from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plotgen_V0_1_0 = CommandToolBuilder(tool="plotgen", base_command=["plotgen"], inputs=[], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plotgen_V0_1_0().translate("wdl")

