from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Scree_Plot_Pyseer_V0_1_0 = CommandToolBuilder(tool="scree_plot_pyseer", base_command=["scree_plot_pyseer"], inputs=[ToolInput(tag="in_max_dimensions", input_type=Int(optional=True), prefix="--max-dimensions", doc=InputDocumentation(doc="Maximum dimensions to plot [Default: 30]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Plot filename [Default: scree_plot.png]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scree_Plot_Pyseer_V0_1_0().translate("wdl", allow_empty_container=True)

