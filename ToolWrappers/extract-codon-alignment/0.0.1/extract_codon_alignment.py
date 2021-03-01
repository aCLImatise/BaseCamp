from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Extract_Codon_Alignment_V0_1_0 = CommandToolBuilder(tool="extract_codon_alignment", base_command=["extract_codon_alignment"], inputs=[ToolInput(tag="in_aligned_cds", input_type=File(optional=True), prefix="--alignedCDS", doc=InputDocumentation(doc="The CDS alignment.")), ToolInput(tag="in_aln_format", input_type=File(optional=True), prefix="--aln_format", doc=InputDocumentation(doc="the file format for the CDS alignment. Anything\naccepted by BioPython is fine [fasta]")), ToolInput(tag="in_codon_poses", input_type=String(optional=True), prefix="--codonPoses", doc=InputDocumentation(doc="Codon position(s) to be extracted [12]")), ToolInput(tag="in_out_aln", input_type=File(optional=True), prefix="--outAln", doc=InputDocumentation(doc="output file name"))], outputs=[ToolOutput(tag="out_out_aln", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_aln", type_hint=File()), doc=OutputDocumentation(doc="output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Codon_Alignment_V0_1_0().translate("wdl", allow_empty_container=True)

