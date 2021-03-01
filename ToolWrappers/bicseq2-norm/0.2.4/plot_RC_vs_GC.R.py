from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_Rc_Vs_Gc_R_V0_1_0 = CommandToolBuilder(tool="plot_RC_vs_GC.R", base_command=["plot_RC_vs_GC.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Rc_Vs_Gc_R_V0_1_0().translate("wdl", allow_empty_container=True)

