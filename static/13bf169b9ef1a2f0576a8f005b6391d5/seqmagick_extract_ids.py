from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Seqmagick_Extract_Ids_V0_1_0 = CommandToolBuilder(tool="seqmagick_extract_ids", base_command=["seqmagick", "extract-ids"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Destination file")), ToolInput(tag="in_input_format", input_type=File(optional=True), prefix="--input-format", doc=InputDocumentation(doc="Input format for sequence file")), ToolInput(tag="in_include_description", input_type=Boolean(optional=True), prefix="--include-description", doc=InputDocumentation(doc="Include the sequence description in output [default:\nFalse]\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Destination file"))], container="quay.io/biocontainers/seqmagick:0.8.4--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqmagick_Extract_Ids_V0_1_0().translate("wdl")

