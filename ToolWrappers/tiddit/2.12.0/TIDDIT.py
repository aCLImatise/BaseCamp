from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tiddit_V0_1_0 = CommandToolBuilder(tool="TIDDIT", base_command=["TIDDIT"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tiddit_V0_1_0().translate("wdl", allow_empty_container=True)

