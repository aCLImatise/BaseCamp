from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Agat_Sp_Flag_Premature_Stop_Codons_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_flag_premature_stop_codons.pl", base_command=["agat_sp_flag_premature_stop_codons.pl"], inputs=[ToolInput(tag="in_ref_file", input_type=File(optional=True), prefix="-reffile", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Imput fasta file.")), ToolInput(tag="in_codon", input_type=Int(optional=True), prefix="--codon", doc=InputDocumentation(doc="Codon table to use. [default 1]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output gff3 file where the result will be printed.")), ToolInput(tag="in_agat_sp_flag_premature_stop_codons_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output gff3 file where the result will be printed."))], container="quay.io/biocontainers/agat:0.5.1--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Flag_Premature_Stop_Codons_Pl_V0_1_0().translate("wdl")

