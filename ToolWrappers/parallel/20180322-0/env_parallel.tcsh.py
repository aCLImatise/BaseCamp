from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Env_Parallel_Tcsh_V0_1_0 = CommandToolBuilder(tool="env_parallel.tcsh", base_command=["env_parallel.tcsh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Env_Parallel_Tcsh_V0_1_0().translate("wdl", allow_empty_container=True)

