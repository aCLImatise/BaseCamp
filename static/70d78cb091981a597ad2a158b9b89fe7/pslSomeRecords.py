from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Pslsomerecords_V0_1_0 = CommandToolBuilder(tool="pslSomeRecords", base_command=["pslSomeRecords"], inputs=[ToolInput(tag="in_not", input_type=Boolean(optional=True), prefix="-not", doc=InputDocumentation(doc="- include psl if name is NOT in list")), ToolInput(tag="in_t_too", input_type=File(optional=True), prefix="-tToo", doc=InputDocumentation(doc="- if set, the list file is two column, qName and tName.\nIn this case only records matching on both q and t are\noutput\n")), ToolInput(tag="in_psl_in", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_list_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_t_too", output_type=File(optional=True), selector=InputSelector(input_to_select="in_t_too", type_hint=File()), doc=OutputDocumentation(doc="- if set, the list file is two column, qName and tName.\nIn this case only records matching on both q and t are\noutput\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslsomerecords_V0_1_0().translate("wdl", allow_empty_container=True)

