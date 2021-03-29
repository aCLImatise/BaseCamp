from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Stacks_Gdb_V0_1_0 = CommandToolBuilder(tool="stacks_gdb", base_command=["stacks-gdb"], inputs=[], outputs=[], container="quay.io/biocontainers/stacks:2.55--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stacks_Gdb_V0_1_0().translate("wdl")

