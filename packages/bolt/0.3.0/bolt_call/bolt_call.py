from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bolt_Call_V0_1_0 = CommandToolBuilder(tool="bolt_call", base_command=["bolt", "call"], inputs=[ToolInput(tag="in_sample_file_path", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="sample file path (*required)")), ToolInput(tag="in_reference_file_path", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="reference file path (*required)")), ToolInput(tag="in_output_path_required", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output path (*required)")), ToolInput(tag="in_number_threads_use", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads to use")), ToolInput(tag="in_command", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_path_required", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path_required", type_hint=File()), doc=OutputDocumentation(doc="output path (*required)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bolt_Call_V0_1_0().translate("wdl", allow_empty_container=True)

