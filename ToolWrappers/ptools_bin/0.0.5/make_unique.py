from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Unique_V0_1_0 = CommandToolBuilder(tool="make_unique", base_command=["make_unique"], inputs=[], outputs=[], container="quay.io/biocontainers/ptools_bin:0.0.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Unique_V0_1_0().translate("wdl")

