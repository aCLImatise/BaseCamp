from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dadaist2_Alpha_V0_1_0 = CommandToolBuilder(tool="dadaist2_alpha", base_command=["dadaist2-alpha"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.7.7--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dadaist2_Alpha_V0_1_0().translate("wdl")

