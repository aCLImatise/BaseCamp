from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rhea_Binning_R_V0_1_0 = CommandToolBuilder(tool="rhea_binning.R", base_command=["rhea-binning.R"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rhea_Binning_R_V0_1_0().translate("wdl")

