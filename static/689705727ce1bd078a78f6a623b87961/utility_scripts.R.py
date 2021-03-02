from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Utility_Scripts_R_V0_1_0 = CommandToolBuilder(tool="utility_scripts.R", base_command=["utility_scripts.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Utility_Scripts_R_V0_1_0().translate("wdl", allow_empty_container=True)

