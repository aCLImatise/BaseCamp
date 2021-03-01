from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Sslm2Sam_V0_1_0 = CommandToolBuilder(tool="sslm2sam", base_command=["sslm2sam"], inputs=[ToolInput(tag="in_verbose", input_type=File(optional=True), prefix="--verbose", doc=InputDocumentation(doc="output SAM-filename; '-' for stdout\n")), ToolInput(tag="in_ssl_m_directory", input_type=String(), position=0, doc=InputDocumentation(doc="SSLM formatted output directories"))], outputs=[ToolOutput(tag="out_verbose", output_type=File(optional=True), selector=InputSelector(input_to_select="in_verbose", type_hint=File()), doc=OutputDocumentation(doc="output SAM-filename; '-' for stdout\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sslm2Sam_V0_1_0().translate("wdl", allow_empty_container=True)

