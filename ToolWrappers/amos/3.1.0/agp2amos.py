from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Agp2Amos_V0_1_0 = CommandToolBuilder(tool="agp2amos", base_command=["agp2amos"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agp2Amos_V0_1_0().translate("wdl", allow_empty_container=True)

