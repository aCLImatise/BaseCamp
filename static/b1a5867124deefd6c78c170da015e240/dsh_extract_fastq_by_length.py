from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dsh_Extract_Fastq_By_Length_V0_1_0 = CommandToolBuilder(tool="dsh_extract_fastq_by_length", base_command=["dsh-extract-fastq-by-length"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_input_fast_q_file", input_type=Boolean(optional=True), prefix="--input-fastq-file", doc=InputDocumentation(doc="[class java.io.File]  input FASTQ file, default stdin [optional]")), ToolInput(tag="in_output_fast_q_file", input_type=File(optional=True), prefix="--output-fastq-file", doc=InputDocumentation(doc="[class java.io.File]  output FASTQ file, default stdout [optional]")), ToolInput(tag="in_minimum_length", input_type=Boolean(optional=True), prefix="--minimum-length", doc=InputDocumentation(doc="[class java.lang.Integer]  minimum sequence length, inclusive [required]")), ToolInput(tag="in_maximum_length", input_type=Boolean(optional=True), prefix="--maximum-length", doc=InputDocumentation(doc="[class java.lang.Integer]  maximum sequence length, exclusive [required]")), ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_fast_q_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fast_q_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output FASTQ file, default stdout [optional]"))], container="quay.io/biocontainers/dsh-bio:2.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Extract_Fastq_By_Length_V0_1_0().translate("wdl")

