from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Libstats_Pl_Bak_V0_1_0 = CommandToolBuilder(tool="libstats.pl.bak", base_command=["libstats.pl.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Libstats_Pl_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

