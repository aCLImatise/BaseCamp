from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Luac_V0_1_0 = CommandToolBuilder(tool="luac", base_command=["luac"], inputs=[ToolInput(tag="in_list_use_l", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="list (use -l -l for full listing)")), ToolInput(tag="in_output_file_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output to file 'name' (default is 'luac.out')")), ToolInput(tag="in_parse_only", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="parse only")), ToolInput(tag="in_strip_debug_information", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="strip debug information")), ToolInput(tag="in_show_version_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="show version information")), ToolInput(tag="in_filenames", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_default", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_default", type_hint=File()), doc=OutputDocumentation(doc="output to file 'name' (default is 'luac.out')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Luac_V0_1_0().translate("wdl", allow_empty_container=True)

