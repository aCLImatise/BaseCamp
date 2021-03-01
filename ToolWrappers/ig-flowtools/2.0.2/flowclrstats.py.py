from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Flowclrstats_Py_V0_1_0 = CommandToolBuilder(tool="flowclrstats.py", base_command=["flowclrstats.py"], inputs=[ToolInput(tag="in_file_locations_flow", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="File locations for flow clr file.")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Path to the directory for the output file.")), ToolInput(tag="in_p", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Path to the directory for the output file.")), ToolInput(tag="in_flow_stats", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc="Path to the directory for the output file.")), ToolOutput(tag="out_p", output_type=File(optional=True), selector=InputSelector(input_to_select="in_p", type_hint=File()), doc=OutputDocumentation(doc="Path to the directory for the output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flowclrstats_Py_V0_1_0().translate("wdl", allow_empty_container=True)

