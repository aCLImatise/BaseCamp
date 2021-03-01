from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lprsetup_Sh_V0_1_0 = CommandToolBuilder(tool="lprsetup.sh", base_command=["lprsetup.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lprsetup_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

