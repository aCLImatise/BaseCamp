from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Antisense_Py_V0_1_0 = CommandToolBuilder(tool="Antisense.py", base_command=["Antisense.py"], inputs=[ToolInput(tag="in_input_file_format", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="input file, format: qseq/fastq/fasta/sequence")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of the output file")), ToolInput(tag="in_length_show_one", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Length to show in one line for fasta. [Default: show all in one\nline]")), ToolInput(tag="in_filter_quality_reads", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Would not filter low quality reads if specified")), ToolInput(tag="in_caaggaacggt", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of the output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Antisense_Py_V0_1_0().translate("wdl", allow_empty_container=True)

