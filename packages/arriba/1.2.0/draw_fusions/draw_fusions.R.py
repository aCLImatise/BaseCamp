from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Draw_Fusions_R_V0_1_0 = CommandToolBuilder(tool="draw_fusions.R", base_command=["draw_fusions.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Draw_Fusions_R_V0_1_0().translate("wdl", allow_empty_container=True)

