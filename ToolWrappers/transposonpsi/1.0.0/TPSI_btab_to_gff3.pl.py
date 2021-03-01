from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tpsi_Btab_To_Gff3_Pl_V0_1_0 = CommandToolBuilder(tool="TPSI_btab_to_gff3.pl", base_command=["TPSI_btab_to_gff3.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tpsi_Btab_To_Gff3_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

