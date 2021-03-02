from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Build_Chr_Gene_Alignment_Index_Pl_V0_1_0 = CommandToolBuilder(tool="build_chr_gene_alignment_index.pl", base_command=["build_chr_gene_alignment_index.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Build_Chr_Gene_Alignment_Index_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

