from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Findspl_V0_1_0 = CommandToolBuilder(tool="findspl", base_command=["findspl"], inputs=[ToolInput(tag="in_gi_number_range", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Gi number of protein [Integer]\ndefault = 0\nrange from 1 to 99999999")), ToolInput(tag="in_input_file_containing", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file containing protein GIs [File In]\ndefault = stdin")), ToolInput(tag="in_output_file_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file [File Out]\ndefault = stdout\n"))], outputs=[ToolOutput(tag="out_output_file_default", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_default", type_hint=File()), doc=OutputDocumentation(doc="Output file [File Out]\ndefault = stdout\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findspl_V0_1_0().translate("wdl", allow_empty_container=True)

