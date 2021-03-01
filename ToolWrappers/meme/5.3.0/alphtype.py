from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Alphtype_V0_1_0 = CommandToolBuilder(tool="alphtype", base_command=["alphtype"], inputs=[], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alphtype_V0_1_0().translate("wdl")

