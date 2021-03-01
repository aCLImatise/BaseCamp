from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dreamtools_Layout_V0_1_0 = CommandToolBuilder(tool="dreamtools_layout", base_command=["dreamtools-layout"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dreamtools_Layout_V0_1_0().translate("wdl", allow_empty_container=True)

