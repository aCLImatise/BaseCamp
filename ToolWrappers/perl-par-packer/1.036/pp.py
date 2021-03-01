from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pp_V0_1_0 = CommandToolBuilder(tool="pp", base_command=["pp"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pp_V0_1_0().translate("wdl", allow_empty_container=True)

