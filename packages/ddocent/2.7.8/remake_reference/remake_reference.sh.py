from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Remake_Reference_Sh_V0_1_0 = CommandToolBuilder(tool="remake_reference.sh", base_command=["remake_reference.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remake_Reference_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

