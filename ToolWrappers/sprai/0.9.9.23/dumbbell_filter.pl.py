from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dumbbell_Filter_Pl_V0_1_0 = CommandToolBuilder(tool="dumbbell_filter.pl", base_command=["dumbbell_filter.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dumbbell_Filter_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

