from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Iu_Visualize_Plot_Dicts_V0_1_0 = CommandToolBuilder(tool="iu_visualize_plot_dicts", base_command=["iu-visualize-plot-dicts"], inputs=[ToolInput(tag="in_dest", input_type=String(optional=True), prefix="--dest", doc=InputDocumentation(doc="Figure destination")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc="Title to appear at the top of the figure")), ToolInput(tag="in_split_tiles", input_type=Boolean(optional=True), prefix="--split-tiles", doc=InputDocumentation(doc="When set, quality curves will be shown separately for\neach tile\n"))], outputs=[], container="quay.io/biocontainers/illumina-utils:2.10--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Visualize_Plot_Dicts_V0_1_0().translate("wdl")

