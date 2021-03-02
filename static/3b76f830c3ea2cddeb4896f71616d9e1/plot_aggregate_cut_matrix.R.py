from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_Aggregate_Cut_Matrix_R_V0_1_0 = CommandToolBuilder(tool="plot_aggregate_cut_matrix.R", base_command=["plot_aggregate_cut_matrix.R"], inputs=[], outputs=[], container="quay.io/biocontainers/atactk:0.1.9--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Aggregate_Cut_Matrix_R_V0_1_0().translate("wdl")

