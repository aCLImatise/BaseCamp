from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Agat_Sp_Add_Start_And_Stop_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_add_start_and_stop.pl", base_command=["agat_sp_add_start_and_stop.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Input fasta file. Needed to check that CDS sequences start by\nstart codon and stop by stop codon.")), ToolInput(tag="in_codon", input_type=Int(optional=True), prefix="--codon", doc=InputDocumentation(doc="Codon table to use. [default 1]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output gff file updated")), ToolInput(tag="in_verbose_debugging_purpose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose for debugging purpose.")), ToolInput(tag="in_agat_sp_add_start_and_stop_do_tpl_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output gff file updated"))], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Add_Start_And_Stop_Pl_V0_1_0().translate("wdl")

