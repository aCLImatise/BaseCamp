from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Flippc1Tomatch_Pl_V0_1_0 = CommandToolBuilder(tool="flipPC1toMatch.pl", base_command=["flipPC1toMatch.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flippc1Tomatch_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

