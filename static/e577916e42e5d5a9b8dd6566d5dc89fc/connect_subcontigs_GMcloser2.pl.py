from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Connect_Subcontigs_Gmcloser2_Pl_V0_1_0 = CommandToolBuilder(tool="connect_subcontigs_GMcloser2.pl", base_command=["connect_subcontigs_GMcloser2.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Connect_Subcontigs_Gmcloser2_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

