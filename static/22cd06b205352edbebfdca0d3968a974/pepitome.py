from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pepitome_V0_1_0 = CommandToolBuilder(tool="pepitome", base_command=["pepitome"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pepitome_V0_1_0().translate("wdl", allow_empty_container=True)

