from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Agat_Convert_Sp_Gff2Bed_Pl_V0_1_0 = CommandToolBuilder(tool="agat_convert_sp_gff2bed.pl", base_command=["agat_convert_sp_gff2bed.pl"], inputs=[ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GFF3 file that will be read")), ToolInput(tag="in_sub", input_type=Boolean(optional=True), prefix="--sub", doc=InputDocumentation(doc="Define the subfeature (level3, e.g exon,cds,utr,etc...) to\nreport as blocks in the bed output. Defaut: exon.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc=", or -o\nFile where will be written the result. If no output file is\nspecified, the output will be written to STDOUT.")), ToolInput(tag="in_agat_convert_sp_gff_two_bed_do_tpl", input_type=Int(), position=0, doc=InputDocumentation(doc="Description:")), ToolInput(tag="in_block_count_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Usage:\nagat_convert_sp_gff2bed.pl --gff file.gff  [ -o outfile ]\nagat_convert_sp_gff2bed.pl --help"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc=", or -o\nFile where will be written the result. If no output file is\nspecified, the output will be written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Convert_Sp_Gff2Bed_Pl_V0_1_0().translate("wdl")

