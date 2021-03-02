from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Stssearch_V0_1_0 = CommandToolBuilder(tool="_stssearch", base_command=["_stssearch"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Stssearch_V0_1_0().translate("wdl", allow_empty_container=True)

