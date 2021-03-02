from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Int

Hicplotviewpoint_V0_1_0 = CommandToolBuilder(tool="hicPlotViewpoint", base_command=["hicPlotViewpoint"], inputs=[ToolInput(tag="in_matrix", input_type=Array(t=String(), optional=True), prefix="--matrix", doc=InputDocumentation(doc="Hi-C matrix to plot.")), ToolInput(tag="in_region", input_type=String(optional=True), prefix="--region", doc=InputDocumentation(doc="The format is chr:start-end.")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name of the image to save.")), ToolInput(tag="in_reference_point", input_type=Int(optional=True), prefix="--referencePoint", doc=InputDocumentation(doc="Reference point. Needs to be in the format: 'chr:100'\nfor a single reference point or 'chr:100-200' for a\nreference region.")), ToolInput(tag="in_chromosome", input_type=String(optional=True), prefix="--chromosome", doc=InputDocumentation(doc="Optional parameter: Only show results for this\nchromosome.")), ToolInput(tag="in_interaction_out_filename", input_type=File(optional=True), prefix="--interactionOutFileName", doc=InputDocumentation(doc="Optional parameter: If set, a bedgraph file with all\ninteraction will be created.")), ToolInput(tag="in_dpi", input_type=Int(optional=True), prefix="--dpi", doc=InputDocumentation(doc="Optional parameter: Resolution for the image in case\ntheouput is a raster graphics image (e.g png, jpg)\n(Default: 300)."))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name of the image to save.")), ToolOutput(tag="out_interaction_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_interaction_out_filename", type_hint=File()), doc=OutputDocumentation(doc="Optional parameter: If set, a bedgraph file with all\ninteraction will be created."))], container="quay.io/biocontainers/hicexplorer:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicplotviewpoint_V0_1_0().translate("wdl")

