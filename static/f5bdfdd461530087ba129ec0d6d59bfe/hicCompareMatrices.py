from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Hiccomparematrices_V0_1_0 = CommandToolBuilder(tool="hicCompareMatrices", base_command=["hicCompareMatrices"], inputs=[ToolInput(tag="in_matrices", input_type=Int(optional=True), prefix="--matrices", doc=InputDocumentation(doc="matrix.h5, -m matrix.h5 matrix.h5\nName of the matrices in .h5 format to use, separated\nby a space. (default: None)")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name to save the resulting matrix. The output is\nalso a .h5 file. (default: None)")), ToolInput(tag="in_operation", input_type=String(optional=True), prefix="--operation", doc=InputDocumentation(doc="Operation to apply to the matrices (Default:\nlog2ratio).")), ToolInput(tag="in_matrix_doth_five", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name to save the resulting matrix. The output is\nalso a .h5 file. (default: None)"))], container="quay.io/biocontainers/hicexplorer:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiccomparematrices_V0_1_0().translate("wdl")

