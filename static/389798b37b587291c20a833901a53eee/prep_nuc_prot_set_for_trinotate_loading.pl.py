from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Prep_Nuc_Prot_Set_For_Trinotate_Loading_Pl_V0_1_0 = CommandToolBuilder(tool="prep_nuc_prot_set_for_trinotate_loading.pl", base_command=["prep_nuc_prot_set_for_trinotate_loading.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prep_Nuc_Prot_Set_For_Trinotate_Loading_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

