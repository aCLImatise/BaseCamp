from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Monitor_Pl_V0_1_0 = CommandToolBuilder(tool="monitor.pl", base_command=["monitor.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Monitor_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

