from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dsh_Rename_Gff3_References_V0_1_0 = CommandToolBuilder(tool="dsh_rename_gff3_references", base_command=["dsh-rename-gff3-references"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_chr", input_type=Boolean(optional=True), prefix="--chr", doc=InputDocumentation(doc="add 'chr' to chromosome reference names [optional]")), ToolInput(tag="in_input_gff_three_file", input_type=Boolean(optional=True), prefix="--input-gff3-file", doc=InputDocumentation(doc="[class java.io.File]  input GFF3 file, default stdin [optional]")), ToolInput(tag="in_output_gff_three_file", input_type=File(optional=True), prefix="--output-gff3-file", doc=InputDocumentation(doc="[class java.io.File]  output GFF3 file, default stdout [optional]")), ToolInput(tag="in_dsh_rename_references", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_gff_three_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_gff_three_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output GFF3 file, default stdout [optional]"))], container="quay.io/biocontainers/dsh-bio:2.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Rename_Gff3_References_V0_1_0().translate("wdl")

