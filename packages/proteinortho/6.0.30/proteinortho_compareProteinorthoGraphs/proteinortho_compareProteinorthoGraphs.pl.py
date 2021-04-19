from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Proteinortho_Compareproteinorthographs_Pl_V0_1_0 = CommandToolBuilder(tool="proteinortho_compareProteinorthoGraphs.pl", base_command=["proteinortho_compareProteinorthoGraphs.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/proteinortho:6.0.30--hb0e25da_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proteinortho_Compareproteinorthographs_Pl_V0_1_0().translate("wdl")

