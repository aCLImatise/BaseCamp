from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Hicplotaverageregions_V0_1_0 = CommandToolBuilder(tool="hicPlotAverageRegions", base_command=["hicPlotAverageRegions"], inputs=[ToolInput(tag="in_matrix", input_type=File(optional=True), prefix="--matrix", doc=InputDocumentation(doc="The averaged regions file computed by\nhicAverageRegions (npz file).")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--outputFile", doc=InputDocumentation(doc="The averaged regions plot.")), ToolInput(tag="in_logo_nep", input_type=Boolean(optional=True), prefix="--log1p", doc=InputDocumentation(doc="Plot log1p of the matrix values.")), ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="--log", doc=InputDocumentation(doc="Plot log of the matrix values.")), ToolInput(tag="in_colormap", input_type=String(optional=True), prefix="--colorMap", doc=InputDocumentation(doc="Color map to use for the heatmap. Available values can\nbe seen here: http://matplotlib.org/examples/color/col\normaps_reference.html (Default: hot_r).")), ToolInput(tag="in_vmin", input_type=String(optional=True), prefix="--vMin", doc=InputDocumentation(doc="Minimum score value.")), ToolInput(tag="in_vmax", input_type=String(optional=True), prefix="--vMax", doc=InputDocumentation(doc="Maximum score value.")), ToolInput(tag="in_dpi", input_type=Int(optional=True), prefix="--dpi", doc=InputDocumentation(doc="Resolution of image ifouput is a raster graphics image\n(e.g png, jpg) (Default: 300)."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="The averaged regions plot."))], container="quay.io/biocontainers/hicexplorer:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicplotaverageregions_V0_1_0().translate("wdl")

