from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Happy_Clones_Span_Clumps_V0_1_0 = CommandToolBuilder(tool="happy_clones_span_clumps", base_command=["happy-clones-span-clumps"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Happy_Clones_Span_Clumps_V0_1_0().translate("wdl", allow_empty_container=True)

