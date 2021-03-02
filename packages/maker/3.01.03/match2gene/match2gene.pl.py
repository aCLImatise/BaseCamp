from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Match2Gene_Pl_V0_1_0 = CommandToolBuilder(tool="match2gene.pl", base_command=["match2gene.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Match2Gene_Pl_V0_1_0().translate("wdl")

