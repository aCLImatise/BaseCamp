from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tag2Bed_Pl_V0_1_0 = CommandToolBuilder(tool="tag2bed.pl", base_command=["tag2bed.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tag2Bed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

