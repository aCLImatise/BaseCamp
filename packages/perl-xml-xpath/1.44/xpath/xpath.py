from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Xpath_V0_1_0 = CommandToolBuilder(tool="xpath", base_command=["xpath"], inputs=[ToolInput(tag="in_only_output_path", input_type=File(optional=True), prefix="-q", doc=InputDocumentation(doc=", only output the resulting PATH.")), ToolInput(tag="in_use_suffix_linefeed", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc=", use suffix instead of linefeed.")), ToolInput(tag="in_use_prefix_nothing", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc=", use prefix instead of nothing.")), ToolInput(tag="in_t_use_dtd", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="'t use an external DTD."))], outputs=[ToolOutput(tag="out_only_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_only_output_path", type_hint=File()), doc=OutputDocumentation(doc=", only output the resulting PATH."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xpath_V0_1_0().translate("wdl", allow_empty_container=True)

