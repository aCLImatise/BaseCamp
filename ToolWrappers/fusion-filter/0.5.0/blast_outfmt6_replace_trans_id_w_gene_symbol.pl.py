from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Blast_Outfmt6_Replace_Trans_Id_W_Gene_Symbol_Pl_V0_1_0 = CommandToolBuilder(tool="blast_outfmt6_replace_trans_id_w_gene_symbol.pl", base_command=["blast_outfmt6_replace_trans_id_w_gene_symbol.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blast_Outfmt6_Replace_Trans_Id_W_Gene_Symbol_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

