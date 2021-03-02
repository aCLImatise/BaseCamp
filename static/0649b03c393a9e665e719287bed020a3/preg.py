from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Preg_V0_1_0 = CommandToolBuilder(tool="preg", base_command=["preg"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Preg_V0_1_0().translate("wdl", allow_empty_container=True)

