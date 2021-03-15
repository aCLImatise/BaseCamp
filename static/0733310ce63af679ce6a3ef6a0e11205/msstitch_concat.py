from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Array, String

Msstitch_Concat_V0_1_0 = CommandToolBuilder(tool="msstitch_concat", base_command=["msstitch", "concat"], inputs=[ToolInput(tag="in_directory_to_output", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="Directory to output in")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_multiple_input_files", input_type=Array(t=String(), optional=True), prefix="-i", doc=InputDocumentation(doc="Multiple input files of {} format"))], outputs=[ToolOutput(tag="out_directory_to_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_to_output", type_hint=File()), doc=OutputDocumentation(doc="Directory to output in")), ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file"))], container="quay.io/biocontainers/msstitch:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msstitch_Concat_V0_1_0().translate("wdl")

