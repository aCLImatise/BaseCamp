from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Greedy_Layout_To_Ium_V0_1_0 = CommandToolBuilder(tool="greedy_layout_to_IUM", base_command=["greedy_layout_to_IUM"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Greedy_Layout_To_Ium_V0_1_0().translate("wdl", allow_empty_container=True)

