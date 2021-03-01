from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Find_Pycompletion_Sh_V0_1_0 = CommandToolBuilder(tool="find_pycompletion.sh", base_command=["find_pycompletion.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Pycompletion_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

