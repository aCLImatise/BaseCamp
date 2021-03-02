from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gxwf_Viz_V0_1_0 = CommandToolBuilder(tool="gxwf_viz", base_command=["gxwf-viz"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gxwf_Viz_V0_1_0().translate("wdl", allow_empty_container=True)

