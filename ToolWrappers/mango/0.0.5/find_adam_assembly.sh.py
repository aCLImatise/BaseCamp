from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Find_Adam_Assembly_Sh_V0_1_0 = CommandToolBuilder(tool="find_adam_assembly.sh", base_command=["find-adam-assembly.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Adam_Assembly_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

