from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cactusapitests_V0_1_0 = CommandToolBuilder(tool="cactusAPITests", base_command=["cactusAPITests"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactusapitests_V0_1_0().translate("wdl", allow_empty_container=True)

