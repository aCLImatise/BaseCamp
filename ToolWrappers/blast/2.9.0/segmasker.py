from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Segmasker_V0_1_0 = CommandToolBuilder(tool="segmasker", base_command=["segmasker"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segmasker_V0_1_0().translate("wdl", allow_empty_container=True)

