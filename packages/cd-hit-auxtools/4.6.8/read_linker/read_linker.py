from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Read_Linker_V0_1_0 = CommandToolBuilder(tool="read_linker", base_command=["read-linker"], inputs=[ToolInput(tag="in_input_file_first_end", input_type=File(optional=True), prefix="-1", doc=InputDocumentation(doc="Input file, first end;")), ToolInput(tag="in_input_file_second_end", input_type=File(optional=True), prefix="-2", doc=InputDocumentation(doc="Input file, second end;")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file;")), ToolInput(tag="in_minimum_overlapping_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Minimum overlapping length (default 10);")), ToolInput(tag="in_maximum_number_errors", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="Maximum number of errors (mismatches, default 1);"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file;"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Linker_V0_1_0().translate("wdl", allow_empty_container=True)

