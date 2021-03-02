from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bed2Nt2Aa_Pl_V0_1_0 = CommandToolBuilder(tool="bed2nt2aa.pl", base_command=["bed2nt2aa.pl"], inputs=[ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="--bed", doc=InputDocumentation(doc="Input file in BED6 format (mandatory)")), ToolInput(tag="in_fa", input_type=Boolean(optional=True), prefix="--fa", doc=InputDocumentation(doc="Input file in Fasta format (mandatory)")), ToolInput(tag="in_aa", input_type=Boolean(optional=True), prefix="--aa", doc=InputDocumentation(doc="Translate nucleotide into amino acid sequences, providing all three\npossible frames")), ToolInput(tag="in_stdout", input_type=File(optional=True), prefix="--stdout", doc=InputDocumentation(doc="Write output to STDOUT instead of an output file 'sequence.fa'")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits\n"))], outputs=[ToolOutput(tag="out_stdout", output_type=File(optional=True), selector=InputSelector(input_to_select="in_stdout", type_hint=File()), doc=OutputDocumentation(doc="Write output to STDOUT instead of an output file 'sequence.fa'"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed2Nt2Aa_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

