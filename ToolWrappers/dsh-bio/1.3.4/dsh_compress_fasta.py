from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dsh_Compress_Fasta_V0_1_0 = CommandToolBuilder(tool="dsh_compress_fasta", base_command=["dsh-compress-fasta"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_input_fast_a_file", input_type=Boolean(optional=True), prefix="--input-fasta-file", doc=InputDocumentation(doc="[class java.io.File]  input FASTA file, default stdin [optional]")), ToolInput(tag="in_output_fast_a_file", input_type=File(optional=True), prefix="--output-fasta-file", doc=InputDocumentation(doc="[class java.io.File]  output FASTA file, default stdout [optional]")), ToolInput(tag="in_line_width", input_type=Boolean(optional=True), prefix="--line-width", doc=InputDocumentation(doc="[class java.lang.Integer]  line width, default 70 [optional]")), ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_fast_a_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fast_a_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output FASTA file, default stdout [optional]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Compress_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

