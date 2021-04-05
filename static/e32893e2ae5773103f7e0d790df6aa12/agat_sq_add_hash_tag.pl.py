from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Agat_Sq_Add_Hash_Tag_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sq_add_hash_tag.pl", base_command=["agat_sq_add_hash_tag.pl"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="STRING: Input GTF/GFF file.")), ToolInput(tag="in_interval", input_type=Int(optional=True), prefix="--interval", doc=InputDocumentation(doc="Integer: 1 or 2. 1 will add ### after each new sequence (column1\nof the gff), while 2 will add the ### after each group of\nfeature (gene). By default the value is 1.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="STRING: Output file. If no output file is specified, the output\nwill be written to STDOUT. The result is in tabulate format.")), ToolInput(tag="in_agat_sq_add_hash_tag_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="STRING: Output file. If no output file is specified, the output\nwill be written to STDOUT. The result is in tabulate format."))], container="quay.io/biocontainers/agat:0.6.0--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sq_Add_Hash_Tag_Pl_V0_1_0().translate("wdl")

