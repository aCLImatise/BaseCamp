from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Readseq_Rm_Dupseq_V0_1_0 = CommandToolBuilder(tool="ReadSeq_rm_dupseq", base_command=["ReadSeq", "rm-dupseq"], inputs=[ToolInput(tag="in_duplicates", input_type=Boolean(optional=True), prefix="--duplicates", doc=InputDocumentation(doc="remove identical sequence, or sequence contained by another sequence")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="output the ids that are contained by other sequences to standard out")), ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--infile", doc=InputDocumentation(doc="input fasta file")), ToolInput(tag="in_min_seq_length", input_type=Int(optional=True), prefix="--min_seq_length", doc=InputDocumentation(doc="filter sequence by minimum sequence length, default is 0")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="output fasta file")), ToolInput(tag="in_rm_redundant_seqs", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="output fasta file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readseq_Rm_Dupseq_V0_1_0().translate("wdl", allow_empty_container=True)

