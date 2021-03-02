from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tracearchivetoca_V0_1_0 = CommandToolBuilder(tool="tracearchiveToCA", base_command=["tracearchiveToCA"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tracearchivetoca_V0_1_0().translate("wdl", allow_empty_container=True)

