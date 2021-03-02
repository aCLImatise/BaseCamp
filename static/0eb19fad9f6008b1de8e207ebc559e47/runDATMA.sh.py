from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rundatma_Sh_V0_1_0 = CommandToolBuilder(tool="runDATMA.sh", base_command=["runDATMA.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rundatma_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

