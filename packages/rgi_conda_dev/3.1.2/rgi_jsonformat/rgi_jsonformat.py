from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Rgi_Jsonformat_V0_1_0 = CommandToolBuilder(tool="rgi_jsonformat", base_command=["rgi_jsonformat"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--in_file", doc=InputDocumentation(doc="input file must be in JSON format e.g Report.json")), ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out_file", doc=InputDocumentation(doc="Output JSON file (default=ReportFormatted)\n"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="Output JSON file (default=ReportFormatted)\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Jsonformat_V0_1_0().translate("wdl", allow_empty_container=True)

