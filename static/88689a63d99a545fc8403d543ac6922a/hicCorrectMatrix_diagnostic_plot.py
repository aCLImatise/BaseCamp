from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Array, String, Boolean

Hiccorrectmatrix_Diagnostic_Plot_V0_1_0 = CommandToolBuilder(tool="hicCorrectMatrix_diagnostic_plot", base_command=["hicCorrectMatrix", "diagnostic_plot"], inputs=[ToolInput(tag="in_matrix", input_type=Int(optional=True), prefix="--matrix", doc=InputDocumentation(doc="Name of the Hi-C matrix to correct in .h5 format.\n(default: None)")), ToolInput(tag="in_plot_name", input_type=File(optional=True), prefix="--plotName", doc=InputDocumentation(doc="File name to save the diagnostic plot. (default: None)")), ToolInput(tag="in_chromosomes", input_type=Array(t=String(), optional=True), prefix="--chromosomes", doc=InputDocumentation(doc="List of chromosomes to be included in the iterative\ncorrection. The order of the given chromosomes will be\nthen kept for the resulting corrected matrix.\n(default: None)")), ToolInput(tag="in_xmax", input_type=Int(optional=True), prefix="--xMax", doc=InputDocumentation(doc="Max value for the x-axis in counts per bin. (default:\nNone)")), ToolInput(tag="in_per_chr", input_type=Boolean(optional=True), prefix="--perchr", doc=InputDocumentation(doc="Compute histogram per chromosome. For samples from\ncells with uneven number of chromosomes and/or\ntranslocations it is advisable to check the histograms\nper chromosome to find the most conservative\n`filterThreshold`. (default: False)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print processing status. (default: False)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiccorrectmatrix_Diagnostic_Plot_V0_1_0().translate("wdl", allow_empty_container=True)

