from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bondtype_V0_1_0 = CommandToolBuilder(tool="bondtype", base_command=["bondtype"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bondtype_V0_1_0().translate("wdl", allow_empty_container=True)

