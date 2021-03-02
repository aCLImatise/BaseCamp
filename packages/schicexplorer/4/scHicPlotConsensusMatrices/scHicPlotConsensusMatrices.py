from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Array

Schicplotconsensusmatrices_V0_1_0 = CommandToolBuilder(tool="scHicPlotConsensusMatrices", base_command=["scHicPlotConsensusMatrices"], inputs=[ToolInput(tag="in_schic_matrix_m", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="scHi-C matrix, -m scool scHi-C matrix\nThe consensus matrix created by scHicConsensusMatrices\n(default: None)")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name to save the resulting cluster profile.\n(default: consensus_matrices.png)")), ToolInput(tag="in_dpi", input_type=Int(optional=True), prefix="--dpi", doc=InputDocumentation(doc="The dpi of the plot. (default: 300)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads. Using the python multiprocessing\nmodule. (default: 4)")), ToolInput(tag="in_chromosomes", input_type=Array(t=String(), optional=True), prefix="--chromosomes", doc=InputDocumentation(doc="List of to be plotted chromosomes (default: None)")), ToolInput(tag="in_colormap", input_type=String(optional=True), prefix="--colorMap", doc=InputDocumentation(doc="Color map to use for the heatmap. Available values can\nbe seen here: http://matplotlib.org/examples/color/col\normaps_reference.html (default: RdYlBu_r)")), ToolInput(tag="in_sch_i_c", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_7", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name to save the resulting cluster profile.\n(default: consensus_matrices.png)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Schicplotconsensusmatrices_V0_1_0().translate("wdl", allow_empty_container=True)

