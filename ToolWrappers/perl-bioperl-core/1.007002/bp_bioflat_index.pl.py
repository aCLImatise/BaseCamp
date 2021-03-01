from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bp_Bioflat_Index_Pl_V0_1_0 = CommandToolBuilder(tool="bp_bioflat_index.pl", base_command=["bp_bioflat_index.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Bioflat_Index_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

