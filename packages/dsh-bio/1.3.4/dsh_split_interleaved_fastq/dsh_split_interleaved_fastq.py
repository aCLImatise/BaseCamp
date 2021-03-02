from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dsh_Split_Interleaved_Fastq_V0_1_0 = CommandToolBuilder(tool="dsh_split_interleaved_fastq", base_command=["dsh-split-interleaved-fastq"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_input_file", input_type=Boolean(optional=True), prefix="--input-file", doc=InputDocumentation(doc="[class java.io.File]  input interleaved FASTQ file, default stdin [optional]")), ToolInput(tag="in_bytes", input_type=Boolean(optional=True), prefix="--bytes", doc=InputDocumentation(doc="[class java.lang.String]  split input file at next pair of records after each n bytes [optional]")), ToolInput(tag="in_records", input_type=Boolean(optional=True), prefix="--records", doc=InputDocumentation(doc="[class java.lang.Long]  split input file after each n records, respecting pairs [optional]")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="[class java.lang.String]  output file prefix [optional]")), ToolInput(tag="in_left_pad", input_type=Boolean(optional=True), prefix="--left-pad", doc=InputDocumentation(doc="[class java.lang.Integer]  left pad split index in output file name [optional]")), ToolInput(tag="in_suffix", input_type=File(optional=True), prefix="--suffix", doc=InputDocumentation(doc="[class java.lang.String]  output file suffix, e.g. .ifq.gz [optional]"))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="[class java.lang.String]  output file prefix [optional]")), ToolOutput(tag="out_suffix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_suffix", type_hint=File()), doc=OutputDocumentation(doc="[class java.lang.String]  output file suffix, e.g. .ifq.gz [optional]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Split_Interleaved_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

