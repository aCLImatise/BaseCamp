from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Index_Blast_Pairs_Remove_Overlapping_Genes_Pl_V0_1_0 = CommandToolBuilder(tool="index_blast_pairs.remove_overlapping_genes.pl", base_command=["index_blast_pairs.remove_overlapping_genes.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Index_Blast_Pairs_Remove_Overlapping_Genes_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

