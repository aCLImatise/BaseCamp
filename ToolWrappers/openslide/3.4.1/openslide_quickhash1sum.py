from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Openslide_Quickhash1Sum_V0_1_0 = CommandToolBuilder(tool="openslide_quickhash1sum", base_command=["openslide-quickhash1sum"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Openslide_Quickhash1Sum_V0_1_0().translate("wdl", allow_empty_container=True)

