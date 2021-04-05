from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Agat_Sp_Keep_Longest_Isoform_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_keep_longest_isoform.pl", base_command=["agat_sp_keep_longest_isoform.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="GTF/GFF file.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="File where will be written the result. If no output file is\nspecified, the output will be written to STDOUT.")), ToolInput(tag="in_agat_sp_keep_longest_isoform_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="File where will be written the result. If no output file is\nspecified, the output will be written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.0--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Keep_Longest_Isoform_Pl_V0_1_0().translate("wdl")

