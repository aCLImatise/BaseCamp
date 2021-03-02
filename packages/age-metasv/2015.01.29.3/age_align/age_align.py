from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Age_Align_V0_1_0 = CommandToolBuilder(tool="age_align", base_command=["age_align"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Age_Align_V0_1_0().translate("wdl", allow_empty_container=True)

