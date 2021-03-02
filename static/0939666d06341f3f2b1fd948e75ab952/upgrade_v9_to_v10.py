from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Upgrade_V9_To_V10_V0_1_0 = CommandToolBuilder(tool="upgrade_v9_to_v10", base_command=["upgrade-v9-to-v10"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Upgrade_V9_To_V10_V0_1_0().translate("wdl", allow_empty_container=True)

