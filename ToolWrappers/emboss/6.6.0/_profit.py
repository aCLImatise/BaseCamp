from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Profit_V0_1_0 = CommandToolBuilder(tool="_profit", base_command=["_profit"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Profit_V0_1_0().translate("wdl", allow_empty_container=True)

