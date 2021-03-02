from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Libtable_Pl_Bak_V0_1_0 = CommandToolBuilder(tool="libtable.pl.bak", base_command=["libtable.pl.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Libtable_Pl_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

