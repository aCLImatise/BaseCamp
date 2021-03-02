from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ctk_Version_V0_1_0 = CommandToolBuilder(tool="ctk_version", base_command=["ctk-version"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ctk_Version_V0_1_0().translate("wdl", allow_empty_container=True)

