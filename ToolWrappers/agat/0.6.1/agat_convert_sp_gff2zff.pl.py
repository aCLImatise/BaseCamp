from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Agat_Convert_Sp_Gff2Zff_Pl_V0_1_0 = CommandToolBuilder(tool="agat_convert_sp_gff2zff.pl", base_command=["agat_convert_sp_gff2zff.pl"], inputs=[ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GTF/GFF file")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="fasta file")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc=", or -o\nFile prefix where will be written the results (e.g. outfile.ann\nand outfile.dna). If no output file is specified, the output\nwill be written to STDOUT.")), ToolInput(tag="in_agat_convert_sp_gfftwozffdotpl", input_type=Int(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc=", or -o\nFile prefix where will be written the results (e.g. outfile.ann\nand outfile.dna). If no output file is specified, the output\nwill be written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Convert_Sp_Gff2Zff_Pl_V0_1_0().translate("wdl")

