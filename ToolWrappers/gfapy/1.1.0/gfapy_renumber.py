from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Gfapy_Renumber_V0_1_0 = CommandToolBuilder(tool="gfapy_renumber", base_command=["gfapy-renumber"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="output GFA file [/dev/stdout]")), ToolInput(tag="in_gfa", input_type=String(), position=0, doc=InputDocumentation(doc="input GFA file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output GFA file [/dev/stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfapy_Renumber_V0_1_0().translate("wdl", allow_empty_container=True)

