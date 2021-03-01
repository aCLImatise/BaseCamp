from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Upgrade_V8_To_V9_V0_1_0 = CommandToolBuilder(tool="upgrade_v8_to_v9", base_command=["upgrade-v8-to-v9"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Upgrade_V8_To_V9_V0_1_0().translate("wdl", allow_empty_container=True)

