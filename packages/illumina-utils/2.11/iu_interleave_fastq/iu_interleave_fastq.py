from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Iu_Interleave_Fastq_V0_1_0 = CommandToolBuilder(tool="iu_interleave_fastq", base_command=["iu-interleave-fastq"], inputs=[ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="FASTQ, --input-r1 R1 FASTQ\nRead 1")), ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="FASTQ, --input-r2 R2 FASTQ\nRead 1")), ToolInput(tag="in_output_file_path", input_type=File(optional=True), prefix="--output-file-path", doc=InputDocumentation(doc="Interleaved FASTQ file path (give it a good name).\n")), ToolInput(tag="in_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_path", type_hint=File()), doc=OutputDocumentation(doc="Interleaved FASTQ file path (give it a good name).\n"))], container="quay.io/biocontainers/illumina-utils:2.11--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Interleave_Fastq_V0_1_0().translate("wdl")

