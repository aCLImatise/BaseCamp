from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rpsblast_V0_1_0 = CommandToolBuilder(tool="rpsblast", base_command=["rpsblast"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rpsblast_V0_1_0().translate("wdl", allow_empty_container=True)

