from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Check_Dependencies_Sh_V0_1_0 = CommandToolBuilder(tool="check_dependencies.sh", base_command=["check_dependencies.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.4--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Dependencies_Sh_V0_1_0().translate("wdl")

