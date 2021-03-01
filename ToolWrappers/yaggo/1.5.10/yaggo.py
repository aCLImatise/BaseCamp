from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Yaggo_V0_1_0 = CommandToolBuilder(tool="yaggo", base_command=["yaggo"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_license", input_type=File(optional=True), prefix="--license", doc=InputDocumentation(doc="License file to copy in header")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="[FILE]                 Display or write manpage")), ToolInput(tag="in_stub", input_type=File(optional=True), prefix="--stub", doc=InputDocumentation(doc="Output a stub yaggo file")), ToolInput(tag="in_zc", input_type=File(optional=True), prefix="--zc", doc=InputDocumentation(doc="Write zsh completion file")), ToolInput(tag="in_extended_syntax", input_type=Boolean(optional=True), prefix="--extended-syntax", doc=InputDocumentation(doc="Use extended syntax")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Debug yaggo"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file")), ToolOutput(tag="out_stub", output_type=File(optional=True), selector=InputSelector(input_to_select="in_stub", type_hint=File()), doc=OutputDocumentation(doc="Output a stub yaggo file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yaggo_V0_1_0().translate("wdl", allow_empty_container=True)

