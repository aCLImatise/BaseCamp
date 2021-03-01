from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Fastutils_Interleave_V0_1_0 = CommandToolBuilder(tool="fastutils_interleave", base_command=["fastutils", "interleave"], inputs=[ToolInput(tag="in_in_one", input_type=Int(optional=True), prefix="--in1", doc=InputDocumentation(doc="fasta/q file containing forward (left) reads [required]")), ToolInput(tag="in_in_two", input_type=Int(optional=True), prefix="--in2", doc=InputDocumentation(doc="fasta/q file containing reverse (right) reads [required]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="output interlaced reads in STR file [stdout]")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="output reads in fastq format if possible")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="separator character [.]"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output interlaced reads in STR file [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastutils_Interleave_V0_1_0().translate("wdl", allow_empty_container=True)

