from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Importphyloseq_Devra_R_V0_1_0 = CommandToolBuilder(tool="importPhyloseq.devRA.R", base_command=["importPhyloseq.devRA.R"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.7.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Importphyloseq_Devra_R_V0_1_0().translate("wdl")

