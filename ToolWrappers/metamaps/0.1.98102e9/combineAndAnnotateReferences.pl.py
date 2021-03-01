from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Combineandannotatereferences_Pl_V0_1_0 = CommandToolBuilder(tool="combineAndAnnotateReferences.pl", base_command=["combineAndAnnotateReferences.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combineandannotatereferences_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

