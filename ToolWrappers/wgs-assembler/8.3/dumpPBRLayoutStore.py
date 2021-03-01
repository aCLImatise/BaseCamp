from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dumppbrlayoutstore_V0_1_0 = CommandToolBuilder(tool="dumpPBRLayoutStore", base_command=["dumpPBRLayoutStore"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dumppbrlayoutstore_V0_1_0().translate("wdl", allow_empty_container=True)

