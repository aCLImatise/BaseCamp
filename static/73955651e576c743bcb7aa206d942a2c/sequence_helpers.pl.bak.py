from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sequence_Helpers_Pl_Bak_V0_1_0 = CommandToolBuilder(tool="sequence_helpers.pl.bak", base_command=["sequence_helpers.pl.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequence_Helpers_Pl_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

