from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Dbxreport_V0_1_0 = CommandToolBuilder(tool="dbxreport", base_command=["dbxreport"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-outfile", doc=InputDocumentation(doc="outfile    [*.dbxreport] Output file name")), ToolInput(tag="in_index_dir", input_type=Boolean(optional=True), prefix="-indexdir", doc=InputDocumentation(doc="directory  Index directory (optional)")), ToolInput(tag="in_full_report", input_type=Boolean(optional=True), prefix="-fullreport", doc=InputDocumentation(doc="boolean    [N] Write full details to debug file"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="outfile    [*.dbxreport] Output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbxreport_V0_1_0().translate("wdl", allow_empty_container=True)

