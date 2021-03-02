from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bt_Save_V0_1_0 = CommandToolBuilder(tool="bt_save", base_command=["bt-save"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bt_Save_V0_1_0().translate("wdl", allow_empty_container=True)

