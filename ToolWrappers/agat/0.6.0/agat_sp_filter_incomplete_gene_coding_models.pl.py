from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Agat_Sp_Filter_Incomplete_Gene_Coding_Models_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_filter_incomplete_gene_coding_models.pl", base_command=["agat_sp_filter_incomplete_gene_coding_models.pl"], inputs=[ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="-gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Genome fasta file. The name of the fasta file containing the\ngenome to work with.")), ToolInput(tag="in_table", input_type=Int(optional=True), prefix="--table", doc=InputDocumentation(doc="This option allows specifying the codon table to use. It expects\nan integer [default 1]")), ToolInput(tag="in_add_flag", input_type=Int(optional=True), prefix="--add_flag", doc=InputDocumentation(doc="Instead of filter the result into two output files, write only\none and add the flag <incomplete> in the gff.(tag = inclomplete,\nvalue = 1, 2, 3. 1=start missing; 2=stop missing; 3=both)")), ToolInput(tag="in_skip_start_check", input_type=String(optional=True), prefix="--skip_start_check", doc=InputDocumentation(doc="Gene model must have a start codon. Activated by default.")), ToolInput(tag="in_skip_stop_check", input_type=String(optional=True), prefix="--skip_stop_check", doc=InputDocumentation(doc="Gene model must have a stop codon. Activated by default.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_verbose_option_make", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose option, make it easier to follow what is going on for\ndebugging purpose.")), ToolInput(tag="in_agat_sp_filter_incomplete_gene_coding_models_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.0--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Filter_Incomplete_Gene_Coding_Models_Pl_V0_1_0().translate("wdl")

