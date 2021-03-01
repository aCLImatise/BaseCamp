from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Sc3_Sc3_Calc_Transfs_R_V0_1_0 = CommandToolBuilder(tool="sc3_sc3_calc_transfs.R", base_command=["sc3-sc3-calc-transfs.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="File name in which a processed SC3 'SingleCellExperiment' object has been stored")), ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="File name in which to store a transformed R object of type 'SingleCellExperiment' from SC3."))], outputs=[ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store a transformed R object of type 'SingleCellExperiment' from SC3."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sc3_Sc3_Calc_Transfs_R_V0_1_0().translate("wdl", allow_empty_container=True)

