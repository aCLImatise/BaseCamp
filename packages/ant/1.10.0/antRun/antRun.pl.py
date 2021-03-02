from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Antrun_Pl_V0_1_0 = CommandToolBuilder(tool="antRun.pl", base_command=["antRun.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Antrun_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

