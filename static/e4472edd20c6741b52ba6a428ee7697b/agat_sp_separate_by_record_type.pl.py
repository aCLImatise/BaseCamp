from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String

Agat_Sp_Separate_By_Record_Type_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_separate_by_record_type.pl", base_command=["agat_sp_separate_by_record_type.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output folder. If no output folder provided, the default name\nwill be <split_result>.")), ToolInput(tag="in_agat_sp_separate_by_record_type_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output folder. If no output folder provided, the default name\nwill be <split_result>."))], container="quay.io/biocontainers/agat:0.5.1--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Separate_By_Record_Type_Pl_V0_1_0().translate("wdl")

