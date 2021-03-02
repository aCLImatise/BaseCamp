from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Acdtable_V0_1_0 = CommandToolBuilder(tool="_acdtable", base_command=["_acdtable"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Acdtable_V0_1_0().translate("wdl", allow_empty_container=True)

