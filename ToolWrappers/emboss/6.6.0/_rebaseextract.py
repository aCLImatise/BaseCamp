from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Rebaseextract_V0_1_0 = CommandToolBuilder(tool="_rebaseextract", base_command=["_rebaseextract"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Rebaseextract_V0_1_0().translate("wdl", allow_empty_container=True)

