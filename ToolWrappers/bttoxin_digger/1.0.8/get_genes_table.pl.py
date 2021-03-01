from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Genes_Table_Pl_V0_1_0 = CommandToolBuilder(tool="get_genes_table.pl", base_command=["get_genes_table.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/bttoxin_digger:1.0.8--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Genes_Table_Pl_V0_1_0().translate("wdl")

