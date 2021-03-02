from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Merlin_Offline_V0_1_0 = CommandToolBuilder(tool="merlin_offline", base_command=["merlin-offline"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merlin_Offline_V0_1_0().translate("wdl", allow_empty_container=True)

