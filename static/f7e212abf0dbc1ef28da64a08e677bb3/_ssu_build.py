from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Ssu_Build_V0_1_0 = CommandToolBuilder(tool="_ssu_build", base_command=["_ssu-build"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Ssu_Build_V0_1_0().translate("wdl", allow_empty_container=True)

