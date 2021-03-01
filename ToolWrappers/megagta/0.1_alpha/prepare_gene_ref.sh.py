from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Prepare_Gene_Ref_Sh_V0_1_0 = CommandToolBuilder(tool="prepare_gene_ref.sh", base_command=["prepare_gene_ref.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prepare_Gene_Ref_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

