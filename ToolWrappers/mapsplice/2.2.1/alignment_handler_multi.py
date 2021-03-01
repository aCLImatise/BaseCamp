from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Alignment_Handler_Multi_V0_1_0 = CommandToolBuilder(tool="alignment_handler_multi", base_command=["alignment_handler_multi"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alignment_Handler_Multi_V0_1_0().translate("wdl", allow_empty_container=True)

