from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Trinity_Gene_To_Trans_Map_Pl_V0_1_0 = CommandToolBuilder(tool="get_Trinity_gene_to_trans_map.pl", base_command=["get_Trinity_gene_to_trans_map.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Trinity_Gene_To_Trans_Map_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

