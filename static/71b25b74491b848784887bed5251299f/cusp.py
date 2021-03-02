from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cusp_V0_1_0 = CommandToolBuilder(tool="cusp", base_command=["cusp"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cusp_V0_1_0().translate("wdl", allow_empty_container=True)

