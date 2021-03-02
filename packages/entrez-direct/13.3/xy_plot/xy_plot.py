from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Xy_Plot_V0_1_0 = CommandToolBuilder(tool="xy_plot", base_command=["xy-plot"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xy_Plot_V0_1_0().translate("wdl", allow_empty_container=True)

