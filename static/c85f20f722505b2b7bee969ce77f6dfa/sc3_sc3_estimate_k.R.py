from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Sc3_Sc3_Estimate_K_R_V0_1_0 = CommandToolBuilder(tool="sc3_sc3_estimate_k.R", base_command=["sc3-sc3-estimate-k.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="File name in which a processed SC3 object can be found.")), ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="File name in which to store the SingleCellExperiment object with estimated k'.")), ToolInput(tag="in_output_text_file", input_type=File(optional=True), prefix="--output-text-file", doc=InputDocumentation(doc="Text file name in which to store the estimated k'."))], outputs=[ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="File name in which to store the SingleCellExperiment object with estimated k'.")), ToolOutput(tag="out_output_text_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_text_file", type_hint=File()), doc=OutputDocumentation(doc="Text file name in which to store the estimated k'."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sc3_Sc3_Estimate_K_R_V0_1_0().translate("wdl", allow_empty_container=True)

