from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

O_Stackbar_R_V0_1_0 = CommandToolBuilder(tool="o_stackbar.R", base_command=["o-stackbar.R"], inputs=[ToolInput(tag="in_output_file_prefix", input_type=File(optional=True), prefix="--output_file_prefix", doc=InputDocumentation(doc="Output file prefix for visualization files [default 'unknown']")), ToolInput(tag="in_colors_file", input_type=File(optional=True), prefix="--colors_file", doc=InputDocumentation(doc="Colors file")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc="Title for the output figure [default '(unknown title)']")), ToolInput(tag="in_legend_pos", input_type=String(optional=True), prefix="--legend_pos", doc=InputDocumentation(doc="Legend pos [default 'none']")), ToolInput(tag="in_stack_bardot_r", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_environment_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_prefix", type_hint=File()), doc=OutputDocumentation(doc="Output file prefix for visualization files [default 'unknown']"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Stackbar_R_V0_1_0().translate("wdl", allow_empty_container=True)

