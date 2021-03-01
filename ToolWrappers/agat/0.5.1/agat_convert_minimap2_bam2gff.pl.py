from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Agat_Convert_Minimap2_Bam2Gff_Pl_V0_1_0 = CommandToolBuilder(tool="agat_convert_minimap2_bam2gff.pl", base_command=["agat_convert_minimap2_bam2gff.pl"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input file in sam (.sam extension) or bam (.bam extension)\nformat.")), ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="To force to use the input file as sam file.")), ToolInput(tag="in_sam", input_type=File(optional=True), prefix="--sam", doc=InputDocumentation(doc="To force to use the input file as sam file.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_agat_convert_sp_minimap_two_bamtwogffdotpl", input_type=Int(), position=0, doc=InputDocumentation(doc="Description:")), ToolInput(tag="in_path_dot", input_type=File(), position=0, doc=InputDocumentation(doc="Usage:\nagat_convert_sp_minimap2_bam2gff.pl -i infile.bam [ -o outfile ]\nagat_convert_sp_minimap2_bam2gff.pl -i infile.sam [ -o outfile ]\nagat_convert_sp_minimap2_bam2gff.pl --help"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.5.1--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Convert_Minimap2_Bam2Gff_Pl_V0_1_0().translate("wdl")

