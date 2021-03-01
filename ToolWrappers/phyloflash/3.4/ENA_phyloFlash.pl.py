from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ena_Phyloflash_Pl_V0_1_0 = CommandToolBuilder(tool="ENA_phyloFlash.pl", base_command=["ENA_phyloFlash.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/phyloflash:3.4--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ena_Phyloflash_Pl_V0_1_0().translate("wdl")

