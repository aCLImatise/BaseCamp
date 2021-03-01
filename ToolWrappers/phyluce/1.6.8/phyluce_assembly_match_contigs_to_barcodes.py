from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Phyluce_Assembly_Match_Contigs_To_Barcodes_V0_1_0 = CommandToolBuilder(tool="phyluce_assembly_match_contigs_to_barcodes", base_command=["phyluce_assembly_match_contigs_to_barcodes"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Assembly_Match_Contigs_To_Barcodes_V0_1_0().translate("wdl", allow_empty_container=True)

