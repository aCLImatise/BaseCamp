from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Find_Adam_Egg_Sh_V0_1_0 = CommandToolBuilder(tool="find_adam_egg.sh", base_command=["find-adam-egg.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Adam_Egg_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

