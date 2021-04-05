from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Agat_Sp_Filter_By_Locus_Distance_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_filter_by_locus_distance.pl", base_command=["agat_sp_filter_by_locus_distance.pl"], inputs=[ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="-gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_dist", input_type=String(optional=True), prefix="--dist", doc=InputDocumentation(doc="The minimum inter-loci distance to allow. No default (will not\napply filter by default).")), ToolInput(tag="in_add_flag", input_type=String(optional=True), prefix="--add_flag", doc=InputDocumentation(doc="Instead of filter the result into two output files, write only\none and add the flag <low_dist> in the gff.(tag = Lvalue or tag\n= Rvalue where L is left and R right and the value is the\ndistance with accordingle the left or right locus)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_verbose_option_make", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose option, make it easier to follow what is going on for\ndebugging purpose.")), ToolInput(tag="in_agat_sp_filter_by_locus_distance_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.0--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Filter_By_Locus_Distance_Pl_V0_1_0().translate("wdl")

