from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cleanme_Pl_V0_1_0 = CommandToolBuilder(tool="cleanme.pl", base_command=["cleanme.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cleanme_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

