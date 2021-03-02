from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Agat_Sp_Fix_Small_Exon_From_Extremities_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_fix_small_exon_from_extremities.pl", base_command=["agat_sp_fix_small_exon_from_extremities.pl"], inputs=[ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="-gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Genome fasta file The name of the fasta file containing the\ngenome to work with.")), ToolInput(tag="in_table", input_type=Int(optional=True), prefix="--table", doc=InputDocumentation(doc="This option allows specifying the codon table to use - It\nexpects an integer (1 by default = standard)")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="Minimum exon size accepted in nucleotide. All exon below this\nsize will be extended to this size. Default value = 15.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_verbose_option_make", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose option, make it easier to follow what is going on for\ndebugging purpose.")), ToolInput(tag="in_agat_fix_small_exon_from_extremities_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.5.1--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Fix_Small_Exon_From_Extremities_Pl_V0_1_0().translate("wdl")

