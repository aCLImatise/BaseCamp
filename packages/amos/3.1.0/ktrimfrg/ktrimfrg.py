from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ktrimfrg_V0_1_0 = CommandToolBuilder(tool="ktrimfrg", base_command=["ktrimfrg"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktrimfrg_V0_1_0().translate("wdl", allow_empty_container=True)

