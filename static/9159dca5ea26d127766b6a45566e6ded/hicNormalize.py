from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Float

Hicnormalize_V0_1_0 = CommandToolBuilder(tool="hicNormalize", base_command=["hicNormalize"], inputs=[ToolInput(tag="in_matrices", input_type=Array(t=String(), optional=True), prefix="--matrices", doc=InputDocumentation(doc="The matrix (or multiple matrices) to get information\nabout. HiCExplorer supports the following file\nformats: h5 (native HiCExplorer format) and cool.")), ToolInput(tag="in_normalize", input_type=String(optional=True), prefix="--normalize", doc=InputDocumentation(doc="Normalize to a) 0 to 1 range, b) all matrices to the\nlowest read count of the given matrices.")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="Output file name for the Hi-C matrix.")), ToolInput(tag="in_multiplicative_value", input_type=String(optional=True), prefix="--multiplicativeValue", doc=InputDocumentation(doc="show this help message and exit")), ToolInput(tag="in_set_to_zero_threshold", input_type=Float(optional=True), prefix="--setToZeroThreshold", doc=InputDocumentation(doc="A threshold to set all values after normalization to 0\nif smaller this threshold. Default value is 0 i.e.\nthere is no effect.It is recommended to set it for the\nnormalize mode 'smallest' to 1.0. This parameter will\ninfluence the sparsity of the matrix by removing many\nvalues close to 0 in smallest normalization mode."))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="Output file name for the Hi-C matrix."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicnormalize_V0_1_0().translate("wdl", allow_empty_container=True)

