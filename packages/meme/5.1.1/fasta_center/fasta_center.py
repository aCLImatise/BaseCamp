from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Fasta_Center_V0_1_0 = CommandToolBuilder(tool="fasta_center", base_command=["fasta-center"], inputs=[ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="-dna", doc=InputDocumentation(doc="the sequences use the DNA alphabet")), ToolInput(tag="in_protein", input_type=Boolean(optional=True), prefix="-protein", doc=InputDocumentation(doc="the sequences use the protein alphabet")), ToolInput(tag="in_rna", input_type=Boolean(optional=True), prefix="-rna", doc=InputDocumentation(doc="the sequences use the RNA alphabet")), ToolInput(tag="in_alph", input_type=File(optional=True), prefix="-alph", doc=InputDocumentation(doc="file with the alphabet definition")), ToolInput(tag="in_len", input_type=Int(optional=True), prefix="-len", doc=InputDocumentation(doc="length of sequences to output; default: 100")), ToolInput(tag="in_flank", input_type=File(optional=True), prefix="-flank", doc=InputDocumentation(doc="output flanking sequences to <file>")), ToolInput(tag="in_reject", input_type=File(optional=True), prefix="-reject", doc=InputDocumentation(doc="output rejected sequences to <file>")), ToolInput(tag="in_sequence_dot", input_type=String(), position=0, doc=InputDocumentation(doc="When an alphabet is specified the sequences are validated and"))], outputs=[ToolOutput(tag="out_flank", output_type=File(optional=True), selector=InputSelector(input_to_select="in_flank", type_hint=File()), doc=OutputDocumentation(doc="output flanking sequences to <file>")), ToolOutput(tag="out_reject", output_type=File(optional=True), selector=InputSelector(input_to_select="in_reject", type_hint=File()), doc=OutputDocumentation(doc="output rejected sequences to <file>"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Center_V0_1_0().translate("wdl", allow_empty_container=True)

