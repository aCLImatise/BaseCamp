from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Lwp_Download_V0_1_0 = CommandToolBuilder(tool="lwp_download", base_command=["lwp-download"], inputs=[ToolInput(tag="in_save_file_ascii", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="save the file in ASCII mode")), ToolInput(tag="in_use_http_headers", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="use HTTP headers to guess output filename")), ToolInput(tag="in_save", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_url", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_use", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_http", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_headers", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_ascii", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_guess", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_use_http_headers", output_type=File(optional=True), selector=InputSelector(input_to_select="in_use_http_headers", type_hint=File()), doc=OutputDocumentation(doc="use HTTP headers to guess output filename"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lwp_Download_V0_1_0().translate("wdl", allow_empty_container=True)

