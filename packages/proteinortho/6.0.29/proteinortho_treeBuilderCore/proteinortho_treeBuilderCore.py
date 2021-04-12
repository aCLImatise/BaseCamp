from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Proteinortho_Treebuildercore_V0_1_0 = CommandToolBuilder(tool="proteinortho_treeBuilderCore", base_command=["proteinortho_treeBuilderCore"], inputs=[], outputs=[], container="quay.io/biocontainers/proteinortho:6.0.29--hb0e25da_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proteinortho_Treebuildercore_V0_1_0().translate("wdl")

