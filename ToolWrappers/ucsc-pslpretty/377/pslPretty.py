from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Pslpretty_V0_1_0 = CommandToolBuilder(tool="pslPretty", base_command=["pslPretty"], inputs=[ToolInput(tag="in_axt", input_type=Boolean(optional=True), prefix="-axt", doc=InputDocumentation(doc="Save in format like Scott Schwartz's axt format.\nNote gaps in both sequences are still allowed in the\noutput, which not all axt readers will expect.")), ToolInput(tag="in_dot", input_type=String(optional=True), prefix="-dot", doc=InputDocumentation(doc="Output a dot every N records.")), ToolInput(tag="in_long", input_type=Boolean(optional=True), prefix="-long", doc=InputDocumentation(doc="Don't abbreviate long inserts.")), ToolInput(tag="in_check", input_type=File(optional=True), prefix="-check", doc=InputDocumentation(doc="Output alignment checks to filename.")), ToolInput(tag="in_in_dot_psl", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_target_dot_lst", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_dot_lst", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_check", output_type=File(optional=True), selector=InputSelector(input_to_select="in_check", type_hint=File()), doc=OutputDocumentation(doc="Output alignment checks to filename."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslpretty_V0_1_0().translate("wdl", allow_empty_container=True)

