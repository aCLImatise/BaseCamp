from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Star_Fusion_V0_1_0 = CommandToolBuilder(tool="STAR_Fusion", base_command=["STAR-Fusion"], inputs=[], outputs=[], container="quay.io/biocontainers/star-fusion:1.10.0--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Star_Fusion_V0_1_0().translate("wdl")

