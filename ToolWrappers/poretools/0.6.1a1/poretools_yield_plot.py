from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Poretools_Yield_Plot_V0_1_0 = CommandToolBuilder(tool="poretools_yield_plot", base_command=["poretools", "yield_plot"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not output warnings to stderr")), ToolInput(tag="in_save_as", input_type=File(optional=True), prefix="--saveas", doc=InputDocumentation(doc="Save the plot to a file. Extension (.pdf or .png) drives")), ToolInput(tag="in_theme_bw", input_type=Boolean(optional=True), prefix="--theme-bw", doc=InputDocumentation(doc="Use a black and white theme.")), ToolInput(tag="in_skip", input_type=Int(optional=True), prefix="--skip", doc=InputDocumentation(doc="Only plot every n points to reduce size")), ToolInput(tag="in_saved_f", input_type=File(optional=True), prefix="--savedf", doc=InputDocumentation(doc="Save the data frame used to construct plot to a file.")), ToolInput(tag="in_plot_type", input_type=String(optional=True), prefix="--plot-type", doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="The input FAST5 files.")), ToolInput(tag="in_type_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--plot-type STRING  Save the wiggle plot to a file (def=reads)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poretools_Yield_Plot_V0_1_0().translate("wdl", allow_empty_container=True)

