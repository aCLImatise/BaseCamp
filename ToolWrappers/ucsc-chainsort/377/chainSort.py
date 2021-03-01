from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Chainsort_V0_1_0 = CommandToolBuilder(tool="chainSort", base_command=["chainSort"], inputs=[ToolInput(tag="in_target", input_type=String(optional=True), prefix="-target", doc=InputDocumentation(doc="on target start rather than score")), ToolInput(tag="in_query", input_type=String(optional=True), prefix="-query", doc=InputDocumentation(doc="on query start rather than score")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="-index", doc=InputDocumentation(doc="build simple two column index file\n<out file position>  <value>\nwhere <value> is score, target, or query\ndepending on the sort.\n")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_index", output_type=File(optional=True), selector=InputSelector(input_to_select="in_index", type_hint=File()), doc=OutputDocumentation(doc="build simple two column index file\n<out file position>  <value>\nwhere <value> is score, target, or query\ndepending on the sort.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chainsort_V0_1_0().translate("wdl", allow_empty_container=True)

