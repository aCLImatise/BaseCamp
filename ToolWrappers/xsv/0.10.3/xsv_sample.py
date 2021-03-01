from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Xsv_Sample_V0_1_0 = CommandToolBuilder(tool="xsv_sample", base_command=["xsv", "sample"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write output to <file> instead of stdout.")), ToolInput(tag="in_no_headers", input_type=Boolean(optional=True), prefix="--no-headers", doc=InputDocumentation(doc="When set, the first row will be consider as part of\nthe population to sample from. (When not set, the\nfirst row is the header row and will always appear\nin the output.)")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The field delimiter for reading CSV data.\nMust be a single character. (default: ,)\n")), ToolInput(tag="in_sample_size", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Write output to <file> instead of stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Sample_V0_1_0().translate("wdl", allow_empty_container=True)

