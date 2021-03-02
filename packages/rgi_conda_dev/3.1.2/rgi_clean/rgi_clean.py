from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rgi_Clean_V0_1_0 = CommandToolBuilder(tool="rgi_clean", base_command=["rgi_clean"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Clean_V0_1_0().translate("wdl", allow_empty_container=True)

