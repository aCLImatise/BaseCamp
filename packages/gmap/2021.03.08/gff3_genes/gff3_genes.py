from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gff3_Genes_V0_1_0 = CommandToolBuilder(tool="gff3_genes", base_command=["gff3_genes"], inputs=[], outputs=[], container="quay.io/biocontainers/gmap:2021.03.08--pl5262h36cd882_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff3_Genes_V0_1_0().translate("wdl")

