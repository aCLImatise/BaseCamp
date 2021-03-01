from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


__Pir2Gsi_Pl_V0_1_0 = CommandToolBuilder(tool="._pir2gsi.pl", base_command=["._pir2gsi.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    __Pir2Gsi_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

