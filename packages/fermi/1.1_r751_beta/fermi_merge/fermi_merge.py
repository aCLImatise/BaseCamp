from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Fermi_Merge_V0_1_0 = CommandToolBuilder(tool="fermi_merge", base_command=["fermi", "merge"], inputs=[ToolInput(tag="in_force_overwrite_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="force to overwrite the output file (effective with -o)")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file name [null]")), ToolInput(tag="in_number_threads_use", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads to use")), ToolInput(tag="in_in_zero_dot_bwt", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one_dot_bwt", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_force_overwrite_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite_file", type_hint=File()), doc=OutputDocumentation(doc="force to overwrite the output file (effective with -o)")), ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="output file name [null]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

