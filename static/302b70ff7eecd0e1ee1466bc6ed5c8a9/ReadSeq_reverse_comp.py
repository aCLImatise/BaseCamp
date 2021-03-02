from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Readseq_Reverse_Comp_V0_1_0 = CommandToolBuilder(tool="ReadSeq_reverse_comp", base_command=["ReadSeq", "reverse-comp"], inputs=[ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="If set, will check orientation of the rRNA sequenc, only reverse complement if needed")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="output format, fasta or fastq. Default is fasta")), ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--infile", doc=InputDocumentation(doc="input fasta file")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="output fasta file")), ToolInput(tag="in_rev_complement", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="output fasta file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readseq_Reverse_Comp_V0_1_0().translate("wdl", allow_empty_container=True)

