from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Draw_Tig_V0_1_0 = CommandToolBuilder(tool="draw_tig", base_command=["draw-tig"], inputs=[], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Draw_Tig_V0_1_0().translate("wdl")

