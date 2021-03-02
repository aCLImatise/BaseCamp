from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Radical_Utils_Version_V0_1_0 = CommandToolBuilder(tool="radical_utils_version", base_command=["radical-utils-version"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Radical_Utils_Version_V0_1_0().translate("wdl", allow_empty_container=True)

