from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Int

Hicplotsvl_V0_1_0 = CommandToolBuilder(tool="hicPlotSVL", base_command=["hicPlotSVL"], inputs=[ToolInput(tag="in_matrices", input_type=Array(t=String(), optional=True), prefix="--matrices", doc=InputDocumentation(doc="The matrix (or multiple matrices) to use for the\ncomparison")), ToolInput(tag="in_plot_filename", input_type=File(optional=True), prefix="--plotFileName", doc=InputDocumentation(doc="Plot name.")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File the p-values are written to, p-values are only\ncomputed if at least two matrices are given.")), ToolInput(tag="in_out_filename_data", input_type=File(optional=True), prefix="--outFileNameData", doc=InputDocumentation(doc="File the computed ratios are written to.")), ToolInput(tag="in_distance", input_type=Int(optional=True), prefix="--distance", doc=InputDocumentation(doc="Distance which should be considered as short range.\nDefault 2MB.")), ToolInput(tag="in_chromosomes", input_type=Array(t=String(), optional=True), prefix="--chromosomes", doc=InputDocumentation(doc="Chromosomes to include in the analysis. If not set,\nall chromosomes are included.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads. Using the python multiprocessing\nmodule.")), ToolInput(tag="in_dpi", input_type=String(optional=True), prefix="--dpi", doc=InputDocumentation(doc="Optional parameter: Resolution for the image in case\ntheoutput is a raster graphics image (e.g png, jpg)")), ToolInput(tag="in_color_list", input_type=Array(t=String(), optional=True), prefix="--colorList", doc=InputDocumentation(doc="Colorlist for the boxplots."))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File the p-values are written to, p-values are only\ncomputed if at least two matrices are given.")), ToolOutput(tag="out_out_filename_data", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename_data", type_hint=File()), doc=OutputDocumentation(doc="File the computed ratios are written to."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicplotsvl_V0_1_0().translate("wdl", allow_empty_container=True)

