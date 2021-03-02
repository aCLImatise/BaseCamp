from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Hicsummatrices_V0_1_0 = CommandToolBuilder(tool="hicSumMatrices", base_command=["hicSumMatrices"], inputs=[ToolInput(tag="in_matrices", input_type=Boolean(optional=True), prefix="--matrices", doc=InputDocumentation(doc=".h5 or cooler file format [.h5 or cooler file format ...], -m .h5 or cooler file format [.h5 or cooler file format ...]\nSpace-delimited names of the matrices to add. The\nmatrices must have the same shape/size. You can verify\ntheir size by using `hicInfo`. (default: None)")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name to save the resulting matrix. The output is\nfrom the same file type as the input. Please add the\nfile ending suffix (either .h5 or .cool), if it is not\ngiven, there will be no output. (default: None)"))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name to save the resulting matrix. The output is\nfrom the same file type as the input. Please add the\nfile ending suffix (either .h5 or .cool), if it is not\ngiven, there will be no output. (default: None)"))], container="quay.io/biocontainers/hicexplorer:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicsummatrices_V0_1_0().translate("wdl")

