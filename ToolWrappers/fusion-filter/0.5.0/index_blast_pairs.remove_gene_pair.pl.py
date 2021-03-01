from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Index_Blast_Pairs_Remove_Gene_Pair_Pl_V0_1_0 = CommandToolBuilder(tool="index_blast_pairs.remove_gene_pair.pl", base_command=["index_blast_pairs.remove_gene_pair.pl"], inputs=[ToolInput(tag="in_ct_at_genome_lib_dir", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fusion_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Index_Blast_Pairs_Remove_Gene_Pair_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

