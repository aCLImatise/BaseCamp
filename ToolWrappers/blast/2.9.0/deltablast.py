from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Deltablast_V0_1_0 = CommandToolBuilder(tool="deltablast", base_command=["deltablast"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deltablast_V0_1_0().translate("wdl", allow_empty_container=True)

