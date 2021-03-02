from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Readshifter_Pl_V0_1_0 = CommandToolBuilder(tool="readshifter.pl", base_command=["readshifter.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readshifter_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

