from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Dropletutils_Downsample_Matrix_R_V0_1_0 = CommandToolBuilder(tool="dropletutils_downsample_matrix.R", base_command=["dropletutils-downsample-matrix.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="File name in which a serialized R SingleCellExperiment object can be found")), ToolInput(tag="in_prop", input_type=File(optional=True), prefix="--prop", doc=InputDocumentation(doc="A numeric scalar or, if bycol=TRUE, a file with ncol(x) lines specifying a value for each cell. All values should lie in [0, 1] specifying the downsampling proportion for the matrix or for each cell.")), ToolInput(tag="in_by_col", input_type=String(optional=True), prefix="--bycol", doc=InputDocumentation(doc="A logical scalar indicating whether downsampling should be performed on a column-by-column basis.")), ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="File name in which to store serialized SingleCellExperiment object."))], outputs=[ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store serialized SingleCellExperiment object."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dropletutils_Downsample_Matrix_R_V0_1_0().translate("wdl", allow_empty_container=True)

