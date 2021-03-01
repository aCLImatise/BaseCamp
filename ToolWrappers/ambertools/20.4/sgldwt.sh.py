from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sgldwt_Sh_V0_1_0 = CommandToolBuilder(tool="sgldwt.sh", base_command=["sgldwt.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sgldwt_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

