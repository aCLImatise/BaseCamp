from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Chainmatches_V0_1_0 = CommandToolBuilder(tool="ChainMatches", base_command=["ChainMatches"], inputs=[ToolInput(tag="in_string_output_binary", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="<string> : output file (binary)"))], outputs=[ToolOutput(tag="out_string_output_binary", output_type=File(optional=True), selector=InputSelector(input_to_select="in_string_output_binary", type_hint=File()), doc=OutputDocumentation(doc="<string> : output file (binary)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chainmatches_V0_1_0().translate("wdl", allow_empty_container=True)

