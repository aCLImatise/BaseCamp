from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dsh_Disinterleave_Fastq_V0_1_0 = CommandToolBuilder(tool="dsh_disinterleave_fastq", base_command=["dsh-disinterleave-fastq"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_paired_file", input_type=Boolean(optional=True), prefix="--paired-file", doc=InputDocumentation(doc="[class java.io.File]  interleaved paired FASTQ input file [required]")), ToolInput(tag="in_unpaired_file", input_type=Boolean(optional=True), prefix="--unpaired-file", doc=InputDocumentation(doc="[class java.io.File]  unpaired FASTQ input file [optional]")), ToolInput(tag="in_first_fast_q_file", input_type=File(optional=True), prefix="--first-fastq-file", doc=InputDocumentation(doc="[class java.io.File]  first FASTQ output file [required]")), ToolInput(tag="in_second_fast_q_file", input_type=File(optional=True), prefix="--second-fastq-file", doc=InputDocumentation(doc="[class java.io.File]  second FASTQ output file [required]"))], outputs=[ToolOutput(tag="out_first_fast_q_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_first_fast_q_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  first FASTQ output file [required]")), ToolOutput(tag="out_second_fast_q_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_second_fast_q_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  second FASTQ output file [required]"))], container="quay.io/biocontainers/dsh-bio:2.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Disinterleave_Fastq_V0_1_0().translate("wdl")

