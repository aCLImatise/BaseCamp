from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clstr_Reps_Faa_Rev_Pl_V0_1_0 = CommandToolBuilder(tool="clstr_reps_faa_rev.pl", base_command=["clstr_reps_faa_rev.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clstr_Reps_Faa_Rev_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

