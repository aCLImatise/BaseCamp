from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


M9B_Btop_Msa_Pl_V0_1_0 = CommandToolBuilder(tool="m9B_btop_msa.pl", base_command=["m9B_btop_msa.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    M9B_Btop_Msa_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

