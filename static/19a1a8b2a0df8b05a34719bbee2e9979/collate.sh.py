from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Collate_Sh_V0_1_0 = CommandToolBuilder(tool="collate.sh", base_command=["collate.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collate_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

