from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_Signal_R_V0_1_0 = CommandToolBuilder(tool="plot_signal.R", base_command=["plot_signal.R"], inputs=[], outputs=[], container="quay.io/biocontainers/atactk:0.1.9--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Signal_R_V0_1_0().translate("wdl")

