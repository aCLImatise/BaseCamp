from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Feelnc_Codpot_Pl_Bak_V0_1_0 = CommandToolBuilder(tool="FEELnc_codpot.pl.bak", base_command=["FEELnc_codpot.pl.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Feelnc_Codpot_Pl_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

