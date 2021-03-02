from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Create_Pan_Genome_Plots_R_V0_1_0 = CommandToolBuilder(tool="create_pan_genome_plots.R", base_command=["create_pan_genome_plots.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Pan_Genome_Plots_R_V0_1_0().translate("wdl", allow_empty_container=True)

