from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_Regions_Interactions_Py_V0_1_0 = CommandToolBuilder(tool="plot_regions_interactions.py", base_command=["plot_regions_interactions.py"], inputs=[], outputs=[], container="quay.io/biocontainers/rilseq:0.81--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Regions_Interactions_Py_V0_1_0().translate("wdl")

