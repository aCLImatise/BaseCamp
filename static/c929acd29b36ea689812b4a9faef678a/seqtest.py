from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Seqtest_V0_1_0 = CommandToolBuilder(tool="seqtest", base_command=["seqtest"], inputs=[ToolInput(tag="in_filename_asn_input", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Filename for asn.1 input [File In]\ndefault = stdin")), ToolInput(tag="in_filename_output_stdout", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Filename for output [File Out]  Optional\ndefault = stdout\n"))], outputs=[ToolOutput(tag="out_filename_output_stdout", output_type=File(optional=True), selector=InputSelector(input_to_select="in_filename_output_stdout", type_hint=File()), doc=OutputDocumentation(doc="Filename for output [File Out]  Optional\ndefault = stdout\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqtest_V0_1_0().translate("wdl", allow_empty_container=True)

