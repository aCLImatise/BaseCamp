from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Directory, String

Kid_V0_1_0 = CommandToolBuilder(tool="kid", base_command=["kid"], inputs=[ToolInput(tag="in_encoding", input_type=Int(optional=True), prefix="--encoding", doc=InputDocumentation(doc="Specify the output character encoding.\nDefault: utf-8")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Specify the output file.\nDefault: standard output")), ToolInput(tag="in_port__serverhostportspecify", input_type=Directory(optional=True), prefix="-s", doc=InputDocumentation(doc=":port, --server=host:port\nSpecify the server address if\nyou want to start the HTTP server.\nInstead of the Kid template,\nyou can specify a base directory.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Specify the output file.\nDefault: standard output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kid_V0_1_0().translate("wdl", allow_empty_container=True)

