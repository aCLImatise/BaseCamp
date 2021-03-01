from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gap_Links_V0_1_0 = CommandToolBuilder(tool="gap_links", base_command=["gap-links"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gap_Links_V0_1_0().translate("wdl", allow_empty_container=True)

