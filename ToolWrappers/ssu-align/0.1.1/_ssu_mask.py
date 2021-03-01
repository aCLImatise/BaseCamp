from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Ssu_Mask_V0_1_0 = CommandToolBuilder(tool="_ssu_mask", base_command=["_ssu-mask"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Ssu_Mask_V0_1_0().translate("wdl", allow_empty_container=True)

