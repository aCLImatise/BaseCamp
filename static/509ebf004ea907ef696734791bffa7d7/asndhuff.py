from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Asndhuff_V0_1_0 = CommandToolBuilder(tool="asndhuff", base_command=["asndhuff"], inputs=[ToolInput(tag="in_input_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file [File In]")), ToolInput(tag="in_output_file_optional", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file [File Out]  Optional"))], outputs=[ToolOutput(tag="out_output_file_optional", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_optional", type_hint=File()), doc=OutputDocumentation(doc="Output file [File Out]  Optional"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Asndhuff_V0_1_0().translate("wdl", allow_empty_container=True)

