from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Phyluce_Snp_Get_From_Uce_Alignments_V0_1_0 = CommandToolBuilder(tool="phyluce_snp_get_from_uce_alignments", base_command=["phyluce_snp_get_from_uce_alignments"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Snp_Get_From_Uce_Alignments_V0_1_0().translate("wdl", allow_empty_container=True)

