from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Blast2Sam_V0_1_0 = CommandToolBuilder(tool="blast2sam", base_command=["blast2sam"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blast2Sam_V0_1_0().translate("wdl", allow_empty_container=True)

