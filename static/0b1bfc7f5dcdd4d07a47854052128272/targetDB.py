from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Targetdb_V0_1_0 = CommandToolBuilder(tool="targetDB", base_command=["targetDB"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Targetdb_V0_1_0().translate("wdl", allow_empty_container=True)

