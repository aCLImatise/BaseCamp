from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Patch_Hmm_Pl_V0_1_0 = CommandToolBuilder(tool="patch_hmm.pl", base_command=["patch-hmm.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Patch_Hmm_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

