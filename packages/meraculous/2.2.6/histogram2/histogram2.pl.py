from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Histogram2_Pl_V0_1_0 = CommandToolBuilder(tool="histogram2.pl", base_command=["histogram2.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Histogram2_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

