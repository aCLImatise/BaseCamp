from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Check_Index_Consistency_V0_1_0 = CommandToolBuilder(tool="check_index_consistency", base_command=["check_index_consistency"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Index_Consistency_V0_1_0().translate("wdl", allow_empty_container=True)

