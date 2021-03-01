from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Unix_Lpr_Sh_V0_1_0 = CommandToolBuilder(tool="unix_lpr.sh", base_command=["unix-lpr.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unix_Lpr_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

