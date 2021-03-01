from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Macaron_Validate_V0_1_0 = CommandToolBuilder(tool="MACARON_validate", base_command=["MACARON_validate"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Macaron_Validate_V0_1_0().translate("wdl", allow_empty_container=True)

