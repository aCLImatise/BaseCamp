from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Oe2Fps_V0_1_0 = CommandToolBuilder(tool="oe2fps", base_command=["oe2fps"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oe2Fps_V0_1_0().translate("wdl", allow_empty_container=True)

