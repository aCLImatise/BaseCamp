from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Makembindex_V0_1_0 = CommandToolBuilder(tool="makembindex", base_command=["makembindex"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makembindex_V0_1_0().translate("wdl", allow_empty_container=True)

