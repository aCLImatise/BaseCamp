from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Getmesh_V0_1_0 = CommandToolBuilder(tool="getmesh", base_command=["getmesh"], inputs=[ToolInput(tag="in_input_data_type", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input data [Data In]\nData Type = Medline-entry")), ToolInput(tag="in_input_data_binary", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Input data is binary [T/F]  Optional\ndefault = F")), ToolInput(tag="in_output_list", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output list [File Out]"))], outputs=[ToolOutput(tag="out_output_list", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_list", type_hint=File()), doc=OutputDocumentation(doc="Output list [File Out]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getmesh_V0_1_0().translate("wdl", allow_empty_container=True)

