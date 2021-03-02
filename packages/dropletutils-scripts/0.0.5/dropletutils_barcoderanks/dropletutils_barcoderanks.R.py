from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Dropletutils_Barcoderanks_R_V0_1_0 = CommandToolBuilder(tool="dropletutils_barcoderanks.R", base_command=["dropletutils-barcoderanks.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="File name in which a serialized R SingleCellExperiment object can be found")), ToolInput(tag="in_lower", input_type=String(optional=True), prefix="--lower", doc=InputDocumentation(doc="A numeric scalar specifying the lower bound on the total UMI count, at or below which all barcodes are assumed to correspond to empty droplets.")), ToolInput(tag="in_fit_bounds", input_type=String(optional=True), prefix="--fit-bounds", doc=InputDocumentation(doc="A string, '<lower>,<upper>', specifying the lower and upper bouunds on the total UMI count for spline fitting.")), ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="File name in which to store serialized SingleCellExperiment object.")), ToolInput(tag="in_output_png_file", input_type=File(optional=True), prefix="--output-png-file", doc=InputDocumentation(doc="File name in which to store serialized SingleCellExperiment object."))], outputs=[ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store serialized SingleCellExperiment object.")), ToolOutput(tag="out_output_png_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_png_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store serialized SingleCellExperiment object."))], container="quay.io/biocontainers/dropletutils-scripts:0.0.5--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dropletutils_Barcoderanks_R_V0_1_0().translate("wdl")

