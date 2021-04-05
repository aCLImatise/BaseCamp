from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Agat_Sp_Prokka_Infernamefromattributes_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_Prokka_inferNameFromAttributes.pl", base_command=["agat_sp_Prokka_inferNameFromAttributes.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_force", input_type=String(optional=True), prefix="--force", doc=InputDocumentation(doc="Name attribute already exists, they will be replaced if a new\none is found")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_agat_sp_pro_kk_a_infer_name_from_attributes_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.0--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Prokka_Infernamefromattributes_Pl_V0_1_0().translate("wdl")

