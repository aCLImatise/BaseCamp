from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Dropletbarcodeplot_R_V0_1_0 = CommandToolBuilder(tool="dropletBarcodePlot.R", base_command=["dropletBarcodePlot.R"], inputs=[ToolInput(tag="in_barcode_frequencies", input_type=File(optional=True), prefix="--barcode-frequencies", doc=InputDocumentation(doc="Path to a two-column tab-delimited file, with barcodes in the first column and frequencies in the second (ignored if --mtx-matrix supplied)")), ToolInput(tag="in_mtx_matrix", input_type=File(optional=True), prefix="--mtx-matrix", doc=InputDocumentation(doc="Matrix-market format matrix file, with cells by column (overrides --barcode-frequencies if supplied)")), ToolInput(tag="in_cells_by_row", input_type=Boolean(optional=True), prefix="--cells-by-row", doc=InputDocumentation(doc="For use with --mtx-matrix: force interpretation of matrix to assume cells are by row, rather than by column (default)")), ToolInput(tag="in_label", input_type=String(optional=True), prefix="--label", doc=InputDocumentation(doc="Label to use in plot")), ToolInput(tag="in_density_bins", input_type=Int(optional=True), prefix="--density-bins", doc=InputDocumentation(doc="Number of bins used to calculate density plot")), ToolInput(tag="in_rory_k_multiplier", input_type=String(optional=True), prefix="--roryk-multiplier", doc=InputDocumentation(doc="Above-baseline multiplier to calculate roryk threshold")), ToolInput(tag="in_output_plot", input_type=File(optional=True), prefix="--output-plot", doc=InputDocumentation(doc="File path for output plot")), ToolInput(tag="in_output_thresholds", input_type=File(optional=True), prefix="--output-thresholds", doc=InputDocumentation(doc="File path for output file containing calculted thresholds"))], outputs=[ToolOutput(tag="out_output_plot", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_plot", type_hint=File()), doc=OutputDocumentation(doc="File path for output plot")), ToolOutput(tag="out_output_thresholds", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_thresholds", type_hint=File()), doc=OutputDocumentation(doc="File path for output file containing calculted thresholds"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dropletbarcodeplot_R_V0_1_0().translate("wdl", allow_empty_container=True)

