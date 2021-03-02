from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Servertell_V0_1_0 = CommandToolBuilder(tool="servertell", base_command=["servertell"], inputs=[ToolInput(tag="in_full", input_type=Boolean(optional=True), prefix="-full", doc=InputDocumentation(doc="boolean    [N] The default behaviour is to report for\nrelevant servers only basic information from\nthe EMBOSS server definition")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-outfile", doc=InputDocumentation(doc="outfile    [stdout] Output file name"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="outfile    [stdout] Output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Servertell_V0_1_0().translate("wdl", allow_empty_container=True)

