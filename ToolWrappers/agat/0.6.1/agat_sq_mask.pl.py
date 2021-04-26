from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Agat_Sq_Mask_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sq_mask.pl", base_command=["agat_sq_mask.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Input fasta file that will be masked")), ToolInput(tag="in_sm", input_type=Boolean(optional=True), prefix="-sm", doc=InputDocumentation(doc="SoftMask option =>Sequences masked will be in lowercase")), ToolInput(tag="in_hm", input_type=Boolean(optional=True), prefix="-hm", doc=InputDocumentation(doc="HardMask option => Sequences masked will be replaced by a\ncharacter. By default the character used is 'n'. But you are\nallowed to speceify any character of your choice. To use 'z'\ninstead of 'n' type: -hm z")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_agat_sq_mask_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sq_Mask_Pl_V0_1_0().translate("wdl")

