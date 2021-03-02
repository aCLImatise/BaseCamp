from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Fastutils_Revcomp_V0_1_0 = CommandToolBuilder(tool="fastutils_revcomp", base_command=["fastutils", "revcomp"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="input file in fasta/q format [stdin]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="output file [stdout]")), ToolInput(tag="in_linewidth", input_type=Int(optional=True), prefix="--lineWidth", doc=InputDocumentation(doc="size of lines in fasta output. Use 0 for no wrapping [0]")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="output reads in fastq format if possible")), ToolInput(tag="in_comment", input_type=Boolean(optional=True), prefix="--comment", doc=InputDocumentation(doc="print comments in headers")), ToolInput(tag="in_lex", input_type=Boolean(optional=True), prefix="--lex", doc=InputDocumentation(doc="output lexicographically smaller sequence"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output file [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastutils_Revcomp_V0_1_0().translate("wdl", allow_empty_container=True)

