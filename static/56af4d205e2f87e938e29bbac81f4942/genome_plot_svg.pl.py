from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Genome_Plot_Svg_Pl_V0_1_0 = CommandToolBuilder(tool="genome_plot_svg.pl", base_command=["genome_plot_svg.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genome_Plot_Svg_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

