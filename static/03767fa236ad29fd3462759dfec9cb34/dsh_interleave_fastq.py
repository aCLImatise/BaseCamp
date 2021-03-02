from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dsh_Interleave_Fastq_V0_1_0 = CommandToolBuilder(tool="dsh_interleave_fastq", base_command=["dsh-interleave-fastq"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_first_fast_q_file", input_type=Boolean(optional=True), prefix="--first-fastq-file", doc=InputDocumentation(doc="[class java.io.File]  first FASTQ input file [required]")), ToolInput(tag="in_second_fast_q_file", input_type=Boolean(optional=True), prefix="--second-fastq-file", doc=InputDocumentation(doc="[class java.io.File]  second FASTQ input file [required]")), ToolInput(tag="in_paired_file", input_type=File(optional=True), prefix="--paired-file", doc=InputDocumentation(doc="[class java.io.File]  output interleaved paired FASTQ file [required]")), ToolInput(tag="in_unpaired_file", input_type=File(optional=True), prefix="--unpaired-file", doc=InputDocumentation(doc="[class java.io.File]  output unpaired FASTQ file [required]"))], outputs=[ToolOutput(tag="out_paired_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_paired_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output interleaved paired FASTQ file [required]")), ToolOutput(tag="out_unpaired_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_unpaired_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output unpaired FASTQ file [required]"))], container="quay.io/biocontainers/dsh-bio:2.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Interleave_Fastq_V0_1_0().translate("wdl")

