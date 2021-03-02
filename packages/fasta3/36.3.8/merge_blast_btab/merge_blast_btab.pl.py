from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Merge_Blast_Btab_Pl_V0_1_0 = CommandToolBuilder(tool="merge_blast_btab.pl", base_command=["merge_blast_btab.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Blast_Btab_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

