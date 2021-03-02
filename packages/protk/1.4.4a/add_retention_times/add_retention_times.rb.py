from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Add_Retention_Times_Rb_V0_1_0 = CommandToolBuilder(tool="add_retention_times.rb", base_command=["add_retention_times.rb"], inputs=[ToolInput(tag="in_replace_output", input_type=File(optional=True), prefix="--replace-output", doc=InputDocumentation(doc="Dont skip analyses for which the output file already exists [false]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file.")), ToolInput(tag="in_file_one_dot_pep_dot_xml", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_two_do_tmgf", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_replace_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_replace_output", type_hint=File()), doc=OutputDocumentation(doc="Dont skip analyses for which the output file already exists [false]")), ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Retention_Times_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

