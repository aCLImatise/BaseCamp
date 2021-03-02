from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tigmint_Make_V0_1_0 = CommandToolBuilder(tool="tigmint_make", base_command=["tigmint-make"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tigmint_Make_V0_1_0().translate("wdl", allow_empty_container=True)

