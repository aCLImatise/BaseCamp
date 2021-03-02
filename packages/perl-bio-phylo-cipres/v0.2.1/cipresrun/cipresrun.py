from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Directory

Cipresrun_V0_1_0 = CommandToolBuilder(tool="cipresrun", base_command=["cipresrun"], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="\")), ToolInput(tag="in_paramnameparamvalue_", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="<paramname=paramvalue> [-p <paramname=paramvalue>] \")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="\")), ToolInput(tag="in_y", input_type=String(optional=True), prefix="-y", doc=InputDocumentation(doc="\")), ToolInput(tag="in_outnameoutpath_", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="<out.name=/out/path> [-o <out.name=/out/path>] \")), ToolInput(tag="in_w", input_type=Directory(optional=True), prefix="-w", doc=InputDocumentation(doc="\")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outnameoutpath_", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outnameoutpath_", type_hint=File()), doc=OutputDocumentation(doc="<out.name=/out/path> [-o <out.name=/out/path>] \"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cipresrun_V0_1_0().translate("wdl", allow_empty_container=True)

