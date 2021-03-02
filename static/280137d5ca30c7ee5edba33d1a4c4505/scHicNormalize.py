from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Float

Schicnormalize_V0_1_0 = CommandToolBuilder(tool="scHicNormalize", base_command=["scHicNormalize"], inputs=[ToolInput(tag="in_schic_matrix_scool", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="scHi-C matrix, -m scool scHi-C matrix\nThe single cell Hi-C interaction matrices to\ninvestigate for QC. Needs to be in scool format\n(default: None)")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name of the consensus scool matrix. (default:\nNone)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads. Using the python multiprocessing\nmodule. (default: 4)")), ToolInput(tag="in_set_to_zero_threshold", input_type=Float(optional=True), prefix="--setToZeroThreshold", doc=InputDocumentation(doc="Values smaller as this threshold are set to 0.\n(default: 1.0)")), ToolInput(tag="in_sch_i_c", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_5", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name of the consensus scool matrix. (default:\nNone)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Schicnormalize_V0_1_0().translate("wdl", allow_empty_container=True)

