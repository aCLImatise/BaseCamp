from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Roary_Create_Pan_Genome_Plots_R_V0_1_0 = CommandToolBuilder(tool="roary_create_pan_genome_plots.R", base_command=["roary-create_pan_genome_plots.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Roary_Create_Pan_Genome_Plots_R_V0_1_0().translate("wdl", allow_empty_container=True)

