from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gil2Bin_V0_1_0 = CommandToolBuilder(tool="gil2bin", base_command=["gil2bin"], inputs=[ToolInput(tag="in_input_gilist", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input gilist [File In]")), ToolInput(tag="in_output_binary_gilist", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output (binary) gilist [File In]")), ToolInput(tag="in_reverse_mode_binary", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Reverse mode (binary to text) [T/F]  Optional\ndefault = F\n"))], outputs=[ToolOutput(tag="out_output_binary_gilist", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_binary_gilist", type_hint=File()), doc=OutputDocumentation(doc="output (binary) gilist [File In]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gil2Bin_V0_1_0().translate("wdl", allow_empty_container=True)

