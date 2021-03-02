from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lightassembler_V0_1_0 = CommandToolBuilder(tool="LightAssembler", base_command=["LightAssembler"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lightassembler_V0_1_0().translate("wdl", allow_empty_container=True)

