from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Sc3_Sc3_Calc_Dists_R_V0_1_0 = CommandToolBuilder(tool="sc3_sc3_calc_dists.R", base_command=["sc3-sc3-calc-dists.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="File name in which a serialized R SingleCellExperiment object where object matrix found")), ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'.'"))], outputs=[ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'.'"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sc3_Sc3_Calc_Dists_R_V0_1_0().translate("wdl", allow_empty_container=True)

