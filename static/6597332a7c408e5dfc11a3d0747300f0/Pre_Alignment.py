from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pre_Alignment_V0_1_0 = CommandToolBuilder(tool="Pre_Alignment", base_command=["Pre_Alignment"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pre_Alignment_V0_1_0().translate("wdl", allow_empty_container=True)

