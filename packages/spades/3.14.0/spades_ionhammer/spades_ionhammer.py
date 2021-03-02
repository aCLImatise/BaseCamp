from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Spades_Ionhammer_V0_1_0 = CommandToolBuilder(tool="spades_ionhammer", base_command=["spades-ionhammer"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spades_Ionhammer_V0_1_0().translate("wdl", allow_empty_container=True)

