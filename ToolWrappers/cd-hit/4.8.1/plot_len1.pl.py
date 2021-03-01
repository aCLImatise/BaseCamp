from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_Len1_Pl_V0_1_0 = CommandToolBuilder(tool="plot_len1.pl", base_command=["plot_len1.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Len1_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

