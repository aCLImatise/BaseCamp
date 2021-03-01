from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Leaff_V0_1_0 = CommandToolBuilder(tool="leaff", base_command=["leaff"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Leaff_V0_1_0().translate("wdl", allow_empty_container=True)

