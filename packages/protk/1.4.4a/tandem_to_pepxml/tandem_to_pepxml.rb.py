from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Tandem_To_Pepxml_Rb_V0_1_0 = CommandToolBuilder(tool="tandem_to_pepxml.rb", base_command=["tandem_to_pepxml.rb"], inputs=[ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="A string to prepend to the name of output files")), ToolInput(tag="in_replace_output", input_type=File(optional=True), prefix="--replace-output", doc=InputDocumentation(doc="Dont skip analyses for which the output file already exists [false]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An explicitly named output file.")), ToolInput(tag="in_file_two_dot_dat", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_replace_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_replace_output", type_hint=File()), doc=OutputDocumentation(doc="Dont skip analyses for which the output file already exists [false]")), ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An explicitly named output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tandem_To_Pepxml_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

