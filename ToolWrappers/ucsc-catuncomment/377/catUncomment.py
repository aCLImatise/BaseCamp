from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Catuncomment_V0_1_0 = CommandToolBuilder(tool="catUncomment", base_command=["catUncomment"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Catuncomment_V0_1_0().translate("wdl", allow_empty_container=True)

