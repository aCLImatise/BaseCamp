from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Summ_Domain_Ident_Pl_V0_1_0 = CommandToolBuilder(tool="summ_domain_ident.pl", base_command=["summ_domain_ident.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summ_Domain_Ident_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

