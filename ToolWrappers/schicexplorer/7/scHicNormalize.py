from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Float

Schicnormalize_V0_1_0 = CommandToolBuilder(tool="scHicNormalize", base_command=["scHicNormalize"], inputs=[ToolInput(tag="in_schic_matrix_scool", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices to\ninvestigate for QC. Needs to be in scool format\n(default: None)")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name of the normalized scool matrix. (default:\nNone)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads. Using the python multiprocessing\nmodule. (default: 4)")), ToolInput(tag="in_normalize", input_type=String(optional=True), prefix="--normalize", doc=InputDocumentation(doc="Normalize to a) all matrices to the lowest read count\nof the given matrices, b) all to a given read coverage\nvalue or c) to a multiplicative value (default:\nsmallest)")), ToolInput(tag="in_set_to_zero_threshold", input_type=Float(optional=True), prefix="--setToZeroThreshold", doc=InputDocumentation(doc="Values smaller as this threshold are set to 0.\n(default: 1.0)")), ToolInput(tag="in_value", input_type=Int(optional=True), prefix="--value", doc=InputDocumentation(doc="This value is used to either be interpreted as the\ndesired read_count or the multiplicative value. This\ndepends on the value for --normalize (default: 1)")), ToolInput(tag="in_maximum_region_to_consider", input_type=Int(optional=True), prefix="--maximumRegionToConsider", doc=InputDocumentation(doc="To compute the normalization factor for the\nnormalization mode 'smallest' and 'read_count',\nconsider only this genomic distance around the\ndiagonal. (default: 30000000)")), ToolInput(tag="in_sch_i_c", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_8", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name of the normalized scool matrix. (default:\nNone)"))], container="quay.io/biocontainers/schicexplorer:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Schicnormalize_V0_1_0().translate("wdl")

