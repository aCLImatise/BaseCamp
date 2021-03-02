from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Chisel_Plotting_V0_1_0 = CommandToolBuilder(tool="chisel_plotting", base_command=["chisel_plotting"], inputs=[ToolInput(tag="in_clone_map", input_type=String(optional=True), prefix="--clonemap", doc=InputDocumentation(doc="Clone map (default: not used, the cells will be\nclustered for plotting purposes)")), ToolInput(tag="in_fig_format", input_type=String(optional=True), prefix="--figformat", doc=InputDocumentation(doc="Format of output figures (default: png, the only other\noption is pdf)")), ToolInput(tag="in_sample", input_type=Int(optional=True), prefix="--sample", doc=InputDocumentation(doc="Number of cells to sample (default: 20)")), ToolInput(tag="in_exclude_noisy", input_type=Boolean(optional=True), prefix="--excludenoisy", doc=InputDocumentation(doc="Exclude noisy cells from plots (default: False)")), ToolInput(tag="in_grid_size", input_type=Int(optional=True), prefix="--gridsize", doc=InputDocumentation(doc="Grid dimenstions specified as comma-separated numbers\n(default: 12,6)")), ToolInput(tag="in_plot_size", input_type=Int(optional=True), prefix="--plotsize", doc=InputDocumentation(doc="Plot dimenstions for RDR-BAF plots, specified as\ncomma-separated numbers (default: 5,1.5)")), ToolInput(tag="in_clus_size", input_type=Int(optional=True), prefix="--clussize", doc=InputDocumentation(doc="Grid dimenstions for clustered plots, specified as\ncomma-separated numbers (default: 5,3)")), ToolInput(tag="in_xmax", input_type=String(optional=True), prefix="--xmax", doc=InputDocumentation(doc="Maximum x-axis value (default: None)")), ToolInput(tag="in_xmin", input_type=String(optional=True), prefix="--xmin", doc=InputDocumentation(doc="Minimum x-axis value (default: None)")), ToolInput(tag="in_ymax", input_type=String(optional=True), prefix="--ymax", doc=InputDocumentation(doc="Maximum x-axis value (default: None)")), ToolInput(tag="in_ymin", input_type=String(optional=True), prefix="--ymin", doc=InputDocumentation(doc="Minimum x-axis value (default: None)")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Input file with inferred copy numbers (default:\ncalls/calls.tsv)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chisel_Plotting_V0_1_0().translate("wdl", allow_empty_container=True)

