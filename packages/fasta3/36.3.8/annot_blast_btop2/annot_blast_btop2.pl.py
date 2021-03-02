from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Annot_Blast_Btop2_Pl_V0_1_0 = CommandToolBuilder(tool="annot_blast_btop2.pl", base_command=["annot_blast_btop2.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annot_Blast_Btop2_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

