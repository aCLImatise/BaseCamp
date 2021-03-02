from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bamflagsplit_V0_1_0 = CommandToolBuilder(tool="bamflagsplit", base_command=["bamflagsplit"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamflagsplit_V0_1_0().translate("wdl", allow_empty_container=True)

