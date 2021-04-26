from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gifrop_Pannotate_R_V0_1_0 = CommandToolBuilder(tool="gifrop_pannotate.R", base_command=["gifrop_pannotate.R"], inputs=[], outputs=[], container="quay.io/biocontainers/gifrop:0.0.9--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gifrop_Pannotate_R_V0_1_0().translate("wdl")

