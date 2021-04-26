from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Agat_Sp_Webapollo_Compliant_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_webApollo_compliant.pl", base_command=["agat_sp_webApollo_compliant.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT.")), ToolInput(tag="in_agat_sp_web_apollo_compliant_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output GFF file. If no output file is specified, the output will\nbe written to STDOUT."))], container="quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Webapollo_Compliant_Pl_V0_1_0().translate("wdl")

