from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Permview_V0_1_0 = CommandToolBuilder(tool="permview", base_command=["permview"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="Output information into specified file.")), ToolInput(tag="in_decl", input_type=Boolean(optional=True), prefix="-decl", doc=InputDocumentation(doc="Show declarative security attributes on classes and methods.")), ToolInput(tag="in_xml", input_type=Boolean(optional=True), prefix="-xml", doc=InputDocumentation(doc="Output in XML format")), ToolInput(tag="in_assembly", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output information into specified file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Permview_V0_1_0().translate("wdl", allow_empty_container=True)

