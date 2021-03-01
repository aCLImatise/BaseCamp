from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mkreport_V0_1_0 = CommandToolBuilder(tool="mkreport", base_command=["mkreport"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mkreport_V0_1_0().translate("wdl", allow_empty_container=True)

