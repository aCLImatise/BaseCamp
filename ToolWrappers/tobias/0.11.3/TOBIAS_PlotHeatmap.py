from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Tobias_Plotheatmap_V0_1_0 = CommandToolBuilder(tool="TOBIAS_PlotHeatmap", base_command=["TOBIAS", "PlotHeatmap"], inputs=[ToolInput(tag="in_tfbs", input_type=Boolean(optional=True), prefix="--TFBS", doc=InputDocumentation(doc="[ [ ...]]           TFBS sites per column (*required)")), ToolInput(tag="in_signals", input_type=Boolean(optional=True), prefix="--signals", doc=InputDocumentation(doc="[ [ ...]]        Signals in bigwig format (*required)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output filename (default: TOBIAS_heatmap.pdf)")), ToolInput(tag="in_plot_boundaries", input_type=Boolean(optional=True), prefix="--plot-boundaries", doc=InputDocumentation(doc="Plot TFBS boundaries")), ToolInput(tag="in_share_colorbar", input_type=Boolean(optional=True), prefix="--share-colorbar", doc=InputDocumentation(doc="Share colorbar across all bigwigs (default: estimate colorbar\nper bigwig)")), ToolInput(tag="in_tfbs_labels", input_type=Boolean(optional=True), prefix="--TFBS-labels", doc=InputDocumentation(doc="[ [ ...]]    Labels of TFBS (default: basename of --TFBS)")), ToolInput(tag="in_signal_labels", input_type=Boolean(optional=True), prefix="--signal-labels", doc=InputDocumentation(doc="[ [ ...]]  Labels of signals (default: basename of --signals)")), ToolInput(tag="in_show_columns", input_type=Boolean(optional=True), prefix="--show-columns", doc=InputDocumentation(doc="[ [ ...]]   Show scores from TFBS column besides heatmap. Set to 0-based\npython coordinates (for example -1 for last column) (default:\nNone)")), ToolInput(tag="in_sort_by", input_type=Boolean(optional=True), prefix="--sort-by", doc=InputDocumentation(doc="Columns in .bed to sort heatmap by (default: input .beds are\nnot sorted)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Level of output logging (0: silent, 1: errors/warnings, 2:\ninfo, 3: stats, 4: debug, 5: spam) (default: 3)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output filename (default: TOBIAS_heatmap.pdf)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tobias_Plotheatmap_V0_1_0().translate("wdl", allow_empty_container=True)

