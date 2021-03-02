from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Acdpretty_V0_1_0 = CommandToolBuilder(tool="acdpretty", base_command=["acdpretty"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Acdpretty_V0_1_0().translate("wdl", allow_empty_container=True)

