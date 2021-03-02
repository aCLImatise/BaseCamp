from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gomerge_Sh_V0_1_0 = CommandToolBuilder(tool="gomerge.sh", base_command=["gomerge.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gomerge_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

