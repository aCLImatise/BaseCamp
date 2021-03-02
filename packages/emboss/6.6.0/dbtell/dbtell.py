from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dbtell_V0_1_0 = CommandToolBuilder(tool="dbtell", base_command=["dbtell"], inputs=[ToolInput(tag="in_full", input_type=Boolean(optional=True), prefix="-full", doc=InputDocumentation(doc="boolean    [N] The default behaviour is to report for\nrelevant databases only basic information\nfrom the EMBOSS database definition")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-outfile", doc=InputDocumentation(doc="outfile    [stdout] Output file name")), ToolInput(tag="in_server", input_type=Boolean(optional=True), prefix="-server", doc=InputDocumentation(doc="string     The name of the server defined locally for\nuse by EMBOSS. (Any string)"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="outfile    [stdout] Output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbtell_V0_1_0().translate("wdl", allow_empty_container=True)

