from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Obo_Union_Pl_V0_1_0 = CommandToolBuilder(tool="obo_union.pl", base_command=["obo_union.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obo_Union_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

