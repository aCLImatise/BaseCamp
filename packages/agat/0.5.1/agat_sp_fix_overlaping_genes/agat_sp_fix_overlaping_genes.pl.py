from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Agat_Sp_Fix_Overlaping_Genes_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_fix_overlaping_genes.pl", base_command=["agat_sp_fix_overlaping_genes.pl"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output file. If none given, will be display in standard output.")), ToolInput(tag="in_agat_sp_fix_overlap_ing_genes_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output file. If none given, will be display in standard output."))], container="quay.io/biocontainers/agat:0.5.1--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Fix_Overlaping_Genes_Pl_V0_1_0().translate("wdl")

