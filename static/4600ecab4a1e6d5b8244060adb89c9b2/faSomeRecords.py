from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Fasomerecords_V0_1_0 = CommandToolBuilder(tool="faSomeRecords", base_command=["faSomeRecords"], inputs=[ToolInput(tag="in_exclude", input_type=File(optional=True), prefix="-exclude", doc=InputDocumentation(doc="- output sequences not in the list file.")), ToolInput(tag="in_in_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_list_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_exclude", output_type=File(optional=True), selector=InputSelector(input_to_select="in_exclude", type_hint=File()), doc=OutputDocumentation(doc="- output sequences not in the list file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasomerecords_V0_1_0().translate("wdl", allow_empty_container=True)

