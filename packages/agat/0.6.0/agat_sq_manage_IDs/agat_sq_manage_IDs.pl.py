from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Agat_Sq_Manage_Ids_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sq_manage_IDs.pl", base_command=["agat_sq_manage_IDs.pl"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="STRING: Input GTF/GFF file.")), ToolInput(tag="in_of", input_type=Boolean(optional=True), prefix="--of", doc=InputDocumentation(doc="Output format, if no ouput format is given, the same as the\ninput one detected will be used. Otherwise you can force to have\na gff version 1 or 2 or 3 by giving the corresponding number.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="STRING: Output file. If no output file is specified, the output\nwill be written to STDOUT. The result is in tabulate format.")), ToolInput(tag="in_agat_sq_manage_id_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="STRING: Output file. If no output file is specified, the output\nwill be written to STDOUT. The result is in tabulate format."))], container="quay.io/biocontainers/agat:0.6.0--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sq_Manage_Ids_Pl_V0_1_0().translate("wdl")

