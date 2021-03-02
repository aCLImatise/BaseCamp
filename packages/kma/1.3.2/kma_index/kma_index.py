from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Kma_Index_V0_1_0 = CommandToolBuilder(tool="kma_index", base_command=["kma_index"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kma_Index_V0_1_0().translate("wdl", allow_empty_container=True)

