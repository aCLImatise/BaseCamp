from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Phylovega_V0_1_0 = CommandToolBuilder(tool="phylovega", base_command=["phylovega"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylovega_V0_1_0().translate("wdl", allow_empty_container=True)

