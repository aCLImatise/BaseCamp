from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Autoupdate_Bak_V0_1_0 = CommandToolBuilder(tool="autoupdate.bak", base_command=["autoupdate.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Autoupdate_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

