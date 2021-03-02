from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Installpackages_R_V0_1_0 = CommandToolBuilder(tool="installpackages.R", base_command=["installpackages.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Installpackages_R_V0_1_0().translate("wdl", allow_empty_container=True)

