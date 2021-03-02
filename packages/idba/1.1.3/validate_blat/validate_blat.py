from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Validate_Blat_V0_1_0 = CommandToolBuilder(tool="validate_blat", base_command=["validate_blat"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Validate_Blat_V0_1_0().translate("wdl", allow_empty_container=True)

