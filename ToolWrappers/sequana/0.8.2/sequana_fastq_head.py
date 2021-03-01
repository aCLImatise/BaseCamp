from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Sequana_Fastq_Head_V0_1_0 = CommandToolBuilder(tool="sequana_fastq_head", base_command=["sequana_fastq_head"], inputs=[ToolInput(tag="in_nlines", input_type=Int(optional=True), prefix="--nlines", doc=InputDocumentation(doc="Number of lines to extract.")), ToolInput(tag="in_input_fastq_gzipped", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="input fastq gzipped or not")), ToolInput(tag="in_output_file_extension", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file with .gz extension or not\n")), ToolInput(tag="in_fast_q_head", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_4", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_5", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_extension", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_extension", type_hint=File()), doc=OutputDocumentation(doc="output file with .gz extension or not\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequana_Fastq_Head_V0_1_0().translate("wdl", allow_empty_container=True)

