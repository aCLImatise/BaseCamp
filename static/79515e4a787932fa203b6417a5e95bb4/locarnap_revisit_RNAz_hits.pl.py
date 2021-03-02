from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Locarnap_Revisit_Rnaz_Hits_Pl_V0_1_0 = CommandToolBuilder(tool="locarnap_revisit_RNAz_hits.pl", base_command=["locarnap-revisit-RNAz-hits.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Locarnap_Revisit_Rnaz_Hits_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

