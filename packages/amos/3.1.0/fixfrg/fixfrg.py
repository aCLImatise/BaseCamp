from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fixfrg_V0_1_0 = CommandToolBuilder(tool="fixfrg", base_command=["fixfrg"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fixfrg_V0_1_0().translate("wdl", allow_empty_container=True)

