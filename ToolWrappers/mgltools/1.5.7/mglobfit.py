from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mglobfit_V0_1_0 = CommandToolBuilder(tool="mglobfit", base_command=["mglobfit"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mglobfit_V0_1_0().translate("wdl", allow_empty_container=True)

