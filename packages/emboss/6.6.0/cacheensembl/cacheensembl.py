from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Float

Cacheensembl_V0_1_0 = CommandToolBuilder(tool="cacheensembl", base_command=["cacheensembl"], inputs=[ToolInput(tag="in_servername", input_type=Boolean(optional=True), prefix="-servername", doc=InputDocumentation(doc="string     Server name (Any string)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-outfile", doc=InputDocumentation(doc="outfile    [stdout] Output file name")), ToolInput(tag="in_six_dot_six_dot_zero_dot_zero", input_type=Float(), position=0, doc=InputDocumentation(doc="Standard (Mandatory) qualifiers:")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="outfile    [stdout] Output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cacheensembl_V0_1_0().translate("wdl", allow_empty_container=True)

