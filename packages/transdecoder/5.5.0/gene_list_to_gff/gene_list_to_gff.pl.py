from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gene_List_To_Gff_Pl_V0_1_0 = CommandToolBuilder(tool="gene_list_to_gff.pl", base_command=["gene_list_to_gff.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gene_List_To_Gff_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

