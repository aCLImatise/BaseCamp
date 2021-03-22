from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Project_Sh_Orig_V0_1_0 = CommandToolBuilder(tool="project.sh.orig", base_command=["project.sh.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Project_Sh_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

