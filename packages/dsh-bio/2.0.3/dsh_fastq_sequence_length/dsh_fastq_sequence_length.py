from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dsh_Fastq_Sequence_Length_V0_1_0 = CommandToolBuilder(tool="dsh_fastq_sequence_length", base_command=["dsh-fastq-sequence-length"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_fast_q_file", input_type=Boolean(optional=True), prefix="--fastq-file", doc=InputDocumentation(doc="[class java.io.File]  input FASTQ file, default stdin [optional]")), ToolInput(tag="in_sequence_length_file", input_type=File(optional=True), prefix="--sequence-length-file", doc=InputDocumentation(doc="[class java.io.File]  output file of sequence lengths, default stdout [optional]")), ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_sequence_length_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sequence_length_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output file of sequence lengths, default stdout [optional]"))], container="quay.io/biocontainers/dsh-bio:2.0.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Fastq_Sequence_Length_V0_1_0().translate("wdl")

