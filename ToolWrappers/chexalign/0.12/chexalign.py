from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Chexalign_V0_1_0 = CommandToolBuilder(tool="chexalign", base_command=["chexalign"], inputs=[], outputs=[], container="quay.io/biocontainers/chexalign:0.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chexalign_V0_1_0().translate("wdl")

