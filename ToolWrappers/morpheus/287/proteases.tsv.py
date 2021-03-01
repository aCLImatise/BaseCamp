from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Proteases_Tsv_V0_1_0 = CommandToolBuilder(tool="proteases.tsv", base_command=["proteases.tsv"], inputs=[], outputs=[], container="quay.io/biocontainers/morpheus:287--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proteases_Tsv_V0_1_0().translate("wdl")

